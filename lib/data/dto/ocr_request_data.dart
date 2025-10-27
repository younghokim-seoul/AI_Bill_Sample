// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ocr_request_data.freezed.dart';
part 'ocr_request_data.g.dart';

/// V1 | V2
enum OcrVersion {
  @JsonValue('V1')
  v1,

  @JsonValue('V2')
  v2,
}

enum Lang {
  @JsonValue('ko')
  ko,
}

@freezed
class OcrImage with _$OcrImage {
  const factory OcrImage({
    required String format,
    required String name,
    required String data,

  }) = _OcrImage;

  factory OcrImage.fromJson(Map<String, dynamic> json) =>
      _$OcrImageFromJson(json);
}

@freezed
class OcrRequestData with _$OcrRequestData {
  const factory OcrRequestData({
    @JsonKey(name: 'version') required OcrVersion version,
    required String requestId,
    required int timestamp,

    /// lang은 선택값. 넣을 때는 Lang.ko만 사용.
    @JsonKey(includeIfNull: false) Lang? lang,

    required List<OcrImage> images,

    @JsonKey(includeIfNull: false) bool? enableTableDetection,
  }) = _OcrRequestData;

  factory OcrRequestData.fromJson(Map<String, dynamic> json) =>
      _$OcrRequestDataFromJson(json);
}
