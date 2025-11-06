import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:ai_bill/data/yolo/yolo_request.dart';
import 'package:ai_bill/data/yolo/yolo_result.dart';
import 'package:camera/camera.dart';
import 'package:image/image.dart' as img;
import 'package:tflite_flutter/tflite_flutter.dart';

class YoloWorker {
  Interpreter? _interpreter;
  List<String>? _labels;
  bool _isInit = false;

  Future<void> initialize(Map<String, dynamic> initPackage) async {
    try {
      final options = InterpreterOptions()
        ..threads =
            2
        ..useNnApiForAndroid = true
        ..addDelegate(XNNPackDelegate());

      final Uint8List modelData = initPackage['modelData'] as Uint8List;
      final String labelData = initPackage['labelData'] as String;

      _interpreter = Interpreter.fromBuffer(modelData, options: options);

      _labels = labelData
          .split('\n')
          .where((label) => label.isNotEmpty)
          .toList();

      _isInit = true;
      log('Isolate: YOLOv8n 모델 로드 성공. 클래스 개수: ${_labels?.length}');
    } catch (e) {
      log('Isolate: 모델 로드 실패: $e');
      _isInit = false;
    }
  }

  YoloResult processFrame(YoloRequest package) {
    if (!_isInit || _interpreter == null || _labels == null) {
      return YoloResult.empty;
    }

    final converted = _convertImage(package);
    log("Isolate: 이미지 변환 완료: $converted ");
    if (converted == null) {
      return YoloResult.empty;
    }

    final bool detected = _runYolo(converted);

    if (!detected) {
      return YoloResult.empty;
    }

    try {
      final jpegData = img.encodeJpg(converted);
      final base64String = base64Encode(jpegData);

      return YoloResult(detected: true, base64Image: base64String);
    } catch (e) {
      log('Isolate: Base64/JPG 인코딩 실패: $e');
      return YoloResult.empty;
    }
  }

  bool _runYolo(img.Image image) {
    if (_interpreter == null) return false;

    final resized = img.copyResize(image, width: 640, height: 640);
    final input = _imageToFloat32(resized);

    final inputBuffer = input.reshape([1, 640, 640, 3]);

    final outputShape = _interpreter!.getOutputTensor(0).shape;
    int expectedChannels = 4 + _labels!.length;

    if (outputShape.length != 3 ||
        outputShape[0] != 1 ||
        outputShape[1] != expectedChannels ||
        outputShape[2] != 8400) {
      log(
        "Isolate: 모델 출력 Shape 불일치! 예상: [1, $expectedChannels, 8400], 실제: $outputShape",
      );
      return false;
    }

    final outputSize = outputShape.reduce((a, b) => a * b);
    final outputBuffer = List.filled(outputSize, 0.0).reshape(outputShape);

    _interpreter!.run(inputBuffer, outputBuffer);

    return _parseOutput(outputBuffer[0] as List<List<double>>);
  }

  bool _parseOutput(List<List<double>> output) {
    const double confidenceThreshold = 0.5;
    final int numClasses = _labels?.length ?? 0;
    final int numProposals = output[0].length;

    if (output.length != (4 + numClasses)) {
      log(
        "Isolate: 파싱 오류: 출력 채널 수(${output.length})가 예상(${4 + numClasses})과 다릅니다.",
      );
      return false;
    }

    for (int i = 0; i < numProposals; i++) {
      for (int c = 0; c < numClasses; c++) {
        double classConfidence = output[4 + c][i];
        if (classConfidence > confidenceThreshold) {
          return true; // 감지 성공
        }
      }
    }

    return false;
  }

  Float32List _imageToFloat32(img.Image image) {
    final buffer = Float32List(1 * 640 * 640 * 3);
    int idx = 0;

    for (int y = 0; y < 640; y++) {
      for (int x = 0; x < 640; x++) {
        final pixel = image.getPixel(x, y);
        buffer[idx++] = pixel.r / 255.0;
        buffer[idx++] = pixel.g / 255.0;
        buffer[idx++] = pixel.b / 255.0;
      }
    }

    return buffer;
  }

  img.Image? _convertImage(YoloRequest image) {
    try {
      if (image.format == ImageFormatGroup.yuv420) {
        return _yuv420ToImage(image);
      } else if (image.format == ImageFormatGroup.bgra8888) {
        return img.Image.fromBytes(
          width: image.width,
          height: image.height,
          bytes: image.planes[0].buffer,
          format: img.Format.uint8,
          numChannels: 4,
        );
      }
    } catch (e) {
      log('Isolate: 이미지 변환 오류: $e');
    }
    return null;
  }

  img.Image _yuv420ToImage(YoloRequest image) {
    final w = image.width;
    final h = image.height;
    final result = img.Image(width: w, height: h);

    final yPlaneBytes = image.planes[0];
    final uPlaneBytes = image.planes[1]; // U 평면
    final vPlaneBytes = image.planes[2]; // V 평면

    final yBPR = image.bytesPerRow[0];
    final uBPR = image.bytesPerRow[1];
    final vBPR = image.bytesPerRow[2];

    final bytesPerPixelList = image.bytesPerPixel;
    final yPixelStride = bytesPerPixelList[0] ?? 1;

    final uPixelStride = bytesPerPixelList[1] ?? 1; // U 평면(planes[1])의 Stride
    final vPixelStride = bytesPerPixelList[2] ?? 1; // V 평면(planes[2])의 Stride

    for (int y = 0; y < h; y++) {
      for (int x = 0; x < w; x++) {
        final yIdx = (y * yBPR) + (x * yPixelStride);
        final yVal = yPlaneBytes[yIdx];

        final uvx = x ~/ 2;
        final uvy = y ~/ 2;

        // U 평면(planes[1])에서 U값 가져오기
        final uIdx = (uvy * uBPR) + (uvx * uPixelStride);
        final uVal = uPlaneBytes[uIdx];

        // V 평면(planes[2])에서 V값 가져오기
        final vIdx = (uvy * vBPR) + (uvx * vPixelStride);
        final vVal = vPlaneBytes[vIdx];


        // 표준 YUV to RGB 변환
        final r = (yVal + vVal * 1.402 - 179.456).clamp(0, 255).toInt();
        final g = (yVal - uVal * 0.344136 - vVal * 0.714136 + 135.45984)
            .clamp(0, 255)
            .toInt();
        final b = (yVal + uVal * 1.772 - 226.816).clamp(0, 255).toInt();

        result.setPixelRgba(x, y, r, g, b, 255);
      }
    }

    return result;
  }
}
