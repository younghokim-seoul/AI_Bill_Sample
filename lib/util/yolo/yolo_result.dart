import 'package:freezed_annotation/freezed_annotation.dart';

part 'yolo_result.freezed.dart';

@freezed
class YoloResult with _$YoloResult {
  const factory YoloResult({
    final bool? detected,
    final String? imagePath,
  }) = _YoloResult;

}


