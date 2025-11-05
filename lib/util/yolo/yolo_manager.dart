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

  Future<void> processFrame(CameraImage image, CameraController controller) async {
    if (!_isInit || _isProcessing) return;
  }

}