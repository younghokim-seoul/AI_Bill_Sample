import 'dart:convert';
import 'dart:io';

import 'package:ai_bill/data/dto/ocr_request_data.dart';
import 'package:ai_bill/data/network/app_dio.dart';
import 'package:ai_bill/util/app_uuid.dart';
import 'package:ai_bill/util/file_utils.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ocr_repository.g.dart';

class OcrRepository {
  final Dio _dio;

  OcrRepository(this._dio);

  Future<void> getOcrData(File file) async {
    try {
      final bytes = await file.readAsBytes();
      final b64 = base64Encode(bytes);
      final format = extFromPath(file.path);
      final fileName = fileNameFromFile(file);

      final request = OcrRequestData(
        version: OcrVersion.v2,
        requestId: newRequestId(),
        timestamp: DateTime.now().millisecondsSinceEpoch,
        lang: Lang.ko,
        images: [OcrImage(format: format, name: fileName, data: b64)],
        enableTableDetection: true,
      );
      final response = await _dio.post('general', data: request);
      print('getOcrData Response: ${response.data}');
    } catch (error) {
      print('getOcrData Error: $error'); // 디버그 로그
      rethrow;
    }
  }
}

@riverpod
OcrRepository ocrRepository(OcrRepositoryRef ref) {
  return OcrRepository(AppDio.getInstance());
}
