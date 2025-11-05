import 'dart:developer';
import 'dart:typed_data';
import 'package:ai_bill/util/yolo/yolo_result.dart';
import 'package:camera/camera.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;
import 'dart:async';

class YoloManager {
  static final YoloManager _instance = YoloManager._internal();

  factory YoloManager() => _instance;

  YoloManager._internal();

  Interpreter? _interpreter;
  bool _isInit = false;
  bool _isProcessing = false;

  final _controller = StreamController<YoloResult>.broadcast();

  Stream<YoloResult> get detectionStream => _controller.stream;

  Future<void> initialize() async {
    try {
      _interpreter = await Interpreter.fromAsset('assets/yolov8n.tflite');
      _isInit = true;
      log('YOLOv8n 모델 로드 성공');
    } catch (e) {
      log('모델 로드 실패: $e');
      _isInit = false;
    }
  }

  Future<void> processFrame(
    CameraImage image,
    CameraController controller,
  ) async {
    if (!_isInit || _isProcessing) return;

    _isProcessing = true;

    try {
      final converted = _convertImage(image);
      if (converted == null) {
        _isProcessing = false;
        return;
      }

      final detected = await _runYolo(converted);

      if (detected) {
        final photo = await controller.takePicture();
        _controller.add(YoloResult(detected: true, imagePath: photo.path));
      } else {
        _controller.add(YoloResult(detected: false));
      }
    } catch (e) {
      log('프레임 처리 오류: $e');
    } finally {
      _isProcessing = false;
    }
  }

  Future<bool> _runYolo(img.Image image) async {
    if (_interpreter == null) return false;

    final resized = img.copyResize(image, width: 640, height: 640);
    final input = _imageToFloat32(resized);

    final output = List.generate(
      1,
      (_) => List.generate(84, (_) => List<double>.filled(8400, 0)),
    );

    _interpreter!.run(input, output);

    return _parseOutput(output[0]);
  }

  bool _parseOutput(List<List<double>> output) {
    const threshold = 0.5;

    for (int i = 0; i < 8400; i++) {
      double maxProb = 0;

      for (int j = 4; j < 84; j++) {
        if (output[j][i] > maxProb) {
          maxProb = output[j][i];
        }
      }

      if (maxProb > threshold) {
        return true; // 옷 감지됨
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

  img.Image? _convertImage(CameraImage image) {
    try {
      if (image.format.group == ImageFormatGroup.yuv420) {
        return _yuv420ToImage(image);
      } else if (image.format.group == ImageFormatGroup.bgra8888) {
        return img.Image.fromBytes(
          width: image.width,
          height: image.height,
          bytes: image.planes[0].bytes.buffer,
          format: img.Format.uint8,
          numChannels: 4,
        );
      }
    } catch (e) {
      log('이미지 변환 오류: $e');
    }
    return null;
  }

  img.Image _yuv420ToImage(CameraImage image) {
    final w = image.width;
    final h = image.height;
    final result = img.Image(width: w, height: h);

    final yPlane = image.planes[0];
    final uPlane = image.planes[1];
    final vPlane = image.planes[2];

    for (int y = 0; y < h; y++) {
      for (int x = 0; x < w; x++) {
        final yIdx = y * yPlane.bytesPerRow + x;
        final uvIdx = (y ~/ 2) * uPlane.bytesPerRow + (x ~/ 2);

        final yVal = yPlane.bytes[yIdx];
        final uVal = uPlane.bytes[uvIdx];
        final vVal = vPlane.bytes[uvIdx];

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
