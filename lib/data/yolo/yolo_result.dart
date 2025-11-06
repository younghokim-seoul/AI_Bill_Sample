import 'package:freezed_annotation/freezed_annotation.dart';

part 'yolo_result.freezed.dart';

@freezed
class YoloResult with _$YoloResult {
  const factory YoloResult({
    required bool detected,
    String? base64Image,
  }) = _YoloResult;

  static const empty = YoloResult(detected: false);

}


