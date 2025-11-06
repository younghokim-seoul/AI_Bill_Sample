import 'dart:async';
import 'dart:developer';

import 'package:ai_bill/data/yolo/yolo_manager.dart';
import 'package:ai_bill/data/yolo/yolo_result.dart';
import 'package:ai_bill/main.dart';
import 'package:arc/arc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await _manager.initialize();
    await _initCamera();
    _subscription = _manager.detectionStream.listen(_onDetection);
    _startProcessing();
  }

  void _startProcessing() {
    if (_controller == null || !_controller!.value.isInitialized) return;

    _controller!.startImageStream((image) async {
      if (!_isAnalyzing && mounted) {
        await _manager.processFrame(image, _controller!);
      }
    });
  }

  void _onDetection(YoloResult result) async {
    log('Detection result: $result');
    if (!result.detected || _isAnalyzing) return;
    _isAnalyzing = true;

    await Future.delayed(const Duration(seconds: 3));
    _isAnalyzing = false;
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

  @override
  void dispose() {
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
