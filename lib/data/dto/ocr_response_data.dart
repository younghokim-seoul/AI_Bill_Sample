import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocr_response_data.freezed.dart';
part 'ocr_response_data.g.dart';

@freezed
class OcrResponse with _$OcrResponse {
  const factory OcrResponse({
    required String version,
    required String requestId,
    required int timestamp,
    required List<OcrImage> images,
  }) = _OcrResponse;

  factory OcrResponse.fromJson(Map<String, dynamic> json) =>
      _$OcrResponseFromJson(json);
}

@freezed
class OcrImage with _$OcrImage {
  const factory OcrImage({
    required String uid,
    required String name,
    required String inferResult,
    required String message,
    required ValidationResult validationResult,
    required ConvertedImageInfo convertedImageInfo,
    required List<FieldDto> fields,
  }) = _OcrImage;

  factory OcrImage.fromJson(Map<String, dynamic> json) =>
      _$OcrImageFromJson(json);
}

@freezed
class ValidationResult with _$ValidationResult {
  const factory ValidationResult({
    required String result,
  }) = _ValidationResult;

  factory ValidationResult.fromJson(Map<String, dynamic> json) =>
      _$ValidationResultFromJson(json);
}

@freezed
class ConvertedImageInfo with _$ConvertedImageInfo {
  const factory ConvertedImageInfo({
    required int width,
    required int height,
    required int pageIndex,
    required bool longImage,
  }) = _ConvertedImageInfo;

  factory ConvertedImageInfo.fromJson(Map<String, dynamic> json) =>
      _$ConvertedImageInfoFromJson(json);
}

@freezed
class FieldDto with _$FieldDto {
  const factory FieldDto({
    String? valueType,
    BoundingPolyDto? boundingPoly,
    String? inferText,
    double? inferConfidence,
    String? type,
    bool? lineBreak,
  }) = _FieldDto;

  factory FieldDto.fromJson(Map<String, dynamic> json) =>
      _$FieldDtoFromJson(json);
}

@freezed
class BoundingPolyDto with _$BoundingPolyDto {
  const factory BoundingPolyDto({
    required List<VertexDto> vertices,
  }) = _BoundingPolyDto;

  factory BoundingPolyDto.fromJson(Map<String, dynamic> json) =>
      _$BoundingPolyDtoFromJson(json);
}

@freezed
class VertexDto with _$VertexDto {
  const factory VertexDto({
    double? x,
    double? y,
  }) = _VertexDto;

  factory VertexDto.fromJson(Map<String, dynamic> json) =>
      _$VertexDtoFromJson(json);
}

/// ====== 편의 메서드: inferText 전체 이어붙이기 ======
/// - minConfidence: 이 값 미만의 토큰은 제외( inferConfidence 가 null이면 포함 )
/// - joinWithNewlines: lineBreak==true면 개행, 아니면 공백
/// - sortByPosition: 좌표(y→x) 정렬
extension OcrResponseJoinExt on OcrResponse {
  String joinInferText({
    double minConfidence = 0.0,
    bool joinWithNewlines = true,
    bool sortByPosition = false,
    double sameLineTolerance = 5.0,
  }) {
    final all = images.expand((img) => img.fields).toList();

    if (sortByPosition) {
      all.sort((a, b) {
        final ay = a.boundingPoly?.vertices.isNotEmpty == true
            ? (a.boundingPoly!.vertices.first.y ?? 0)
            : 0;
        final by = b.boundingPoly?.vertices.isNotEmpty == true
            ? (b.boundingPoly!.vertices.first.y ?? 0)
            : 0;
        final ax = a.boundingPoly?.vertices.isNotEmpty == true
            ? (a.boundingPoly!.vertices.first.x ?? 0)
            : 0;
        final bx = b.boundingPoly?.vertices.isNotEmpty == true
            ? (b.boundingPoly!.vertices.first.x ?? 0)
            : 0;

        if ((ay - by).abs() <= sameLineTolerance) return ax.compareTo(bx);
        return ay.compareTo(by);
      });
    }

    final buf = StringBuffer();
    for (final f in all) {
      final t = f.inferText;
      final c = f.inferConfidence;

      if (t == null || t.isEmpty) continue;
      if (c != null && c < minConfidence) continue;

      buf.write(t);
      if (joinWithNewlines && (f.lineBreak ?? false)) {
        buf.write('\n');
      } else {
        buf.write(' ');
      }
    }

    return buf.toString().replaceAll(RegExp(r'[ \t]+\n'), '\n').trim();
  }
}
