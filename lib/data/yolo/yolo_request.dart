
import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'yolo_request.freezed.dart';

@freezed
class YoloRequest with _$YoloRequest {
  const factory YoloRequest({
    required List<Uint8List> planes,
    required List<int> bytesPerRow,
    required List<int?> bytesPerPixel,
    required int width,
    required int height,
    required ImageFormatGroup format,
  }) = _YoloResult;
}
