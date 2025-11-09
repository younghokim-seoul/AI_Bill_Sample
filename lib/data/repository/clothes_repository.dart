import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ai_bill/data/dto/gpt_response_data.dart';
import 'package:ai_bill/data/network/app_dio.dart';
import 'package:ai_bill/environment.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clothes_repository.g.dart';

class ClothesRepository {
  final Dio _dio;

  ClothesRepository(this._dio);

  Future<String> _uploadWithDetectFile(
    File file, {
    String purpose = 'vision',
  }) async {
    final uploaded = await OpenAI.instance.file.upload(
      file: file,
      purpose: purpose,
    );

    return uploaded.id;
  }

  Future<GptResponse> getSummaryAi({
    required File file,
    CancelToken? cancelToken,
  }) async {
    final fileId = await _uploadWithDetectFile(file);

    log("fileID =>>>>>>>>>> $fileId");

    final startTime = DateTime.now();

    try {
      final body = {
        "model": "gpt-5",
        "max_output_tokens": 1000,
        "text": { "format": {"type": "json_object"}, },
        "input": [
          {
            "role": "user",
            "content": [
              {
                "type": "input_text",
                "text": '''
                 옷 사진을 분석해서 한글로 요약주세요.
                 반드시 아래 JSON으로만 응답:
               {
                 "summaries": ""
               }
              ''',
              },
              {"type": "input_image", "file_id": fileId},
            ],
          },
        ],
      };

      final resp = await _dio.post(
        'https://api.openai.com/v1/responses',
        data: body,
        cancelToken: cancelToken,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${Environment.instance.openApiKey}',
            'Content-Type': 'application/json',
          },
          sendTimeout: const Duration(seconds: 60),
          receiveTimeout: const Duration(minutes: 2),
        ),
      );

      final data = resp.data as Map<String, dynamic>;

      final text = _extractOutputText(data);
      if (text == null) {
        throw Exception('No JSON text in response: $data');
      }

      final jsonMap = jsonDecode(text) as Map<String, dynamic>;

      final response = GptResponse.fromJson(jsonMap);
      log(
        'Qna 시간 : ${DateTime.now().difference(startTime).inSeconds}',
      );

      return response;
    } catch (error) {
      print('getSummaryAi error: $error');
      rethrow;
    }
  }
}

String? _extractOutputText(Map<String, dynamic> data) {

  final outputText = data['output_text'];
  if (outputText is String && outputText.isNotEmpty) return outputText;


  final output = data['output'];
  if (output is List) {
    for (final msg in output) {
      final content = (msg is Map) ? msg['content'] : null;
      if (content is List) {
        for (final item in content) {
          if (item is Map && item['type'] == 'output_text') {
            final txt = item['text'];
            if (txt is String && txt.isNotEmpty) return txt;

            if (txt is Map) {
              final v = txt['value'];
              if (v is String && v.isNotEmpty) return v;
            }
          }
        }
      }
    }
  }
  return null;
}

@riverpod
ClothesRepository clothesRepository(ClothesRepositoryRef ref) {
  return ClothesRepository(AppDio.getInstance());
}
