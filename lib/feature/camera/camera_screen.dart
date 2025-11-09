import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:ai_bill/data/repository/clothes_repository.dart';
import 'package:ai_bill/data/yolo/yolo_manager.dart';
import 'package:ai_bill/data/yolo/yolo_result.dart';
import 'package:ai_bill/main.dart';
import 'package:ai_bill/util/file_utils.dart';
import 'package:ai_bill/util/tts_service.dart';
import 'package:arc/arc.dart';
import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class CameraScreen extends ConsumerStatefulWidget {
  const CameraScreen({super.key});

  @override
  ConsumerState createState() => _CameraScreenState();
}

class _CameraScreenState extends ConsumerState<CameraScreen> {
  final YoloManager _manager = YoloManager();
  CameraController? _controller;
  StreamSubscription? _subscription;

  bool _isInitialized = false;
  bool _isAnalyzing = false;

  CancelToken? _cancelToken;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await _manager.initialize();
    await _initCamera();
    _subscription = _manager.detectionStream.listen(_onDetection);
    TtsService.speak("분석을 시작 합니다.");
    _startProcessing();
  }

  Future<File> _captureStill() async {
    final c = _controller!;
    await Future.delayed(const Duration(milliseconds: 200));
    final XFile shot = await c.takePicture();
    return File(shot.path);
  }

  void _startProcessing() {
    if (!mounted) return;
    if (_controller == null || !_controller!.value.isInitialized) return;

    if (_controller!.value.isStreamingImages) return;

    _controller!.startImageStream((image) async {
      if (!_isAnalyzing && mounted) {
        await _manager.processFrame(image, _controller!);
      }
    });
  }

  Future<void> _stopProcessing() async {
    final c = _controller;
    if (c == null || !c.value.isInitialized) return;

    if (c.value.isStreamingImages) {
      try {
        await c.stopImageStream();
      } on CameraException catch (_) {
        log('Error stopping image stream');
      }
    }

  }

  void _onDetection(YoloResult result) async {
    log('Detection result: $result');

    if (!result.detected || _isAnalyzing || result == YoloResult.empty || result.base64Image == null) {
      return;
    }

    File? stillFile;
    _isAnalyzing = true;

    try {
      unawaited(TtsService.speak("사물이 감지 되었습니다. 잠시만 기다려 주세요."));

      await _stopProcessing();


      stillFile = await _captureStill();

      EasyLoading.show(status: '분석중..');

      _newCancelToken();

      final summary = await ref
          .watch(clothesRepositoryProvider)
          .getSummaryAi(file: stillFile,cancelToken: _cancelToken);

      if (!mounted || _cancelToken?.isCancelled == true) return;
      unawaited(EasyLoading.dismiss());
      await TtsService.speak("분석이 완료 되었습니다.");
      await TtsService.speak(summary.summaries);
    } catch (error) {
      log('Error during detection handling: $error');
      unawaited(EasyLoading.dismiss());
      await TtsService.speak("분석에 실패 하였습니다.");
    } finally {
      if (stillFile != null) {
        try {
          if (await stillFile.exists()) {
            await stillFile.delete();
          }
        } catch (_) {}
      }
      _isAnalyzing = false;
      _startProcessing();
    }
  }

  Future<void> _initCamera() async {
    try {
      if (cameras.isEmpty) {
        log('No cameras found.');
        return;
      }
      final camera = cameras.firstWhere(
        (cam) => cam.lensDirection == CameraLensDirection.back,
        orElse: () => cameras.first,
      );

      _controller = CameraController(
        camera,
        ResolutionPreset.medium,
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.yuv420,
      );
      await _controller!.initialize();

      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    } catch (e) {
      log('Error initializing camera: $e');
    }
  }


  void _newCancelToken() {
    _cancelToken?.cancel('restart');
    _cancelToken = CancelToken();
  }

  @override
  void dispose() {

    _cancelToken?.cancel('screen disposed');
    _cancelToken = null;

    TtsService.stop();

    _subscription?.cancel();
    _controller?.dispose();
    _manager.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Arc.pushNamedAndRemoveUntil("/");
            },
          ),
          Gap(8),
        ],
      ),
      body: _isInitialized ? _buildCamera() : _buildLoader(),
    );
  }

  Widget _buildLoader() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildCamera() {
    return Stack(fit: StackFit.expand, children: [CameraPreview(_controller!)]);
  }
}
