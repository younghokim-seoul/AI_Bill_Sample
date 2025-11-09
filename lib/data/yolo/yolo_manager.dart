import 'dart:async';
import 'dart:developer';
import 'dart:isolate';

import 'package:ai_bill/data/yolo/yolo_request.dart';
import 'package:ai_bill/data/yolo/yolo_result.dart';
import 'package:ai_bill/data/yolo/yolo_worker.dart';
import 'package:camera/camera.dart';
import 'package:flutter/services.dart';

Future<void> _yoloIsolateEntry(List<dynamic> message) async {
  final SendPort toMainSendPort = message[0] as SendPort;
  final Map<String, dynamic> initPackage = message[1] as Map<String, dynamic>;

  final fromMainReceivePort = ReceivePort();
  toMainSendPort.send(fromMainReceivePort.sendPort);

  final worker = YoloWorker();
  await worker.initialize(initPackage);
  await for (final msg in fromMainReceivePort) {
    if (msg is YoloRequest) {
      try {
        final detected = worker.processFrame(msg);
        toMainSendPort.send(detected);
      } catch (e) {
        log('Isolate 작업 오류: $e');
        toMainSendPort.send(false);
      }
    }
  }
}

class YoloManager {
  Isolate? _isolate;
  SendPort? _toIsolateSendPort;
  ReceivePort? _fromIsolateReceivePort;

  bool _isInit = false;
  bool _isProcessing = false;

  StreamController<YoloResult> _controller = StreamController<YoloResult>.broadcast();

  Stream<YoloResult> get detectionStream => _controller.stream;

  Future<void> initialize() async {

    if (_controller.isClosed) {
      _controller = StreamController<YoloResult>.broadcast();
    }

    if (_isInit) return;

    _fromIsolateReceivePort = ReceivePort();

    try {
      final modelData = await rootBundle.load('assets/weights_int8.tflite');
      final labelData = await rootBundle.loadString('assets/labels.txt');

      final initPackage = {
        'modelData': modelData.buffer.asUint8List(),
        'labelData': labelData,
      };

      _isolate = await Isolate.spawn(_yoloIsolateEntry, [
        _fromIsolateReceivePort!.sendPort,
        initPackage,
      ]);

      _fromIsolateReceivePort!.listen(_onIsolateMessage);

      _isInit = true;
      log('YoloManager 초기화 및 Isolate 생성 성공.');
    } catch (e) {
      log('Isolate 생성 실패: $e');
      _isInit = false;
    }
  }

  void _onIsolateMessage(dynamic data) {
    if (data is SendPort) {
      _toIsolateSendPort = data;
      log('Isolate SendPort 수신 완료.');
    } else if (data is YoloResult) {
      final bool detected = data.detected;

      if (!detected) {
        _controller.add(data);
        _isProcessing = false;
      } else {
        log("메인 스레드: 감지 성공, 사진 촬영 시도");
        _controller.add(data);
        _isProcessing = false;
      }
    }
  }

  Future<void> processFrame(
    CameraImage image,
    CameraController controller,
  ) async {
    if (!_isInit || _isProcessing || _toIsolateSendPort == null) {
      return;
    }

    _isProcessing = true;

    try {
      final package = YoloRequest(
        planes: image.planes.map((p) => p.bytes).toList(),
        bytesPerRow: image.planes.map((p) => p.bytesPerRow).toList(),
        bytesPerPixel: image.planes.map((p) => p.bytesPerPixel).toList(),
        width: image.width,
        height: image.height,
        format: image.format.group,
      );

      _toIsolateSendPort!.send(package);
    } catch (e) {
      log('프레임 처리 오류: $e');
    }
  }

  void dispose() {
    _fromIsolateReceivePort?.close();
    _isolate?.kill(priority: Isolate.immediate);
    _controller.close();
    _isInit = false;
  }
}
