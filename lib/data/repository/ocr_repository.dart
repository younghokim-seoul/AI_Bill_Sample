import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ai_bill/data/dto/gpt_response_data.dart';
import 'package:ai_bill/data/dto/ocr_request_data.dart';
import 'package:ai_bill/data/dto/ocr_response_data.dart';
import 'package:ai_bill/data/network/app_dio.dart';
import 'package:ai_bill/util/app_uuid.dart';
import 'package:ai_bill/util/file_utils.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dart_openai/dart_openai.dart';

part 'ocr_repository.g.dart';

class OcrRepository {
  final Dio _dio;

  OcrRepository(this._dio);

  Future<String> getOcrData(
    File file, {
    double minConfidence = 0.9,
    bool joinWithNewlines = true,
    bool sortByPosition = true,
  }) async {
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
        images: [OcrReqImage(format: format, name: fileName, data: b64)],
        enableTableDetection: true,
      );
      final response = await _dio.post('general', data: request);
      print('getOcrData Response: ${response.data}');

      final dto = OcrResponse.fromJson(response.data as Map<String, dynamic>);

      final plain = dto.joinInferText(
        minConfidence: minConfidence,
        joinWithNewlines: joinWithNewlines,
        sortByPosition: sortByPosition,
      );

      print('$plain');
      return plain;
    } catch (error) {
      print('getOcrData Error: $error'); // 디버그 로그
      rethrow;
    }
  }

  Future<GptResponse> getSummaryAi(String script) async {
    final systemMessage = OpenAIChatCompletionChoiceMessageModel(
      content: [
        OpenAIChatCompletionChoiceMessageContentItemModel.text('''
          고지서 및 관리비 영수증 요약 설명을 제공하려고 합니다.
          내용을 기반으로 충분한 요약을 제공하거나 고지서 관련 내용인지 판단해주세요.
          

         
          내용 : $script
       
       
          ### 응답 형식:
          모든 응답은 아래 JSON 구조를 따라야 합니다. summaries 에 요약된 내용을 반드시 포함해야 하고
          또한 비용이나 납부 계좌번호, 고객센터 전화번호 까지 내용 도 포함해서 요약을 해야 합니다.
  
           ```json 
          { 
            "summaries": "", // 필수
          }
          ```  
          '''),
      ],
      role: OpenAIChatMessageRole.system,
    );

    final startTime = DateTime.now();

    try {
      OpenAIChatCompletionModel completion = await OpenAI.instance.chat.create(
        model: "gpt-4o",
        messages: [systemMessage],
        responseFormat: {"type": "json_object"},
        maxTokens: 500,
        temperature: 0.2,
      );

      log('Qna 토큰사용량 : ${completion.usage}'); // 응답 결과 출력
      log(
        'Qna 시간 : ${DateTime.now().difference(startTime).inSeconds}',
      ); // 응답 결과 출력
      log('Qna 결과 : ${completion.choices.first.message.content}'); // 응답 결과 출력

      final response = completion.choices.first.message.content?.first.text;

      if (response == null) {
        throw Exception("No response from AI");
      }

      final targetJson = jsonDecode(response);
      final targetEntity = GptResponse.fromJson(targetJson);
      return targetEntity;
    } catch (error) {
      print('getSummaryAi error: $error'); // 디버그 로그
      rethrow;
    }
  }
}

@riverpod
OcrRepository ocrRepository(OcrRepositoryRef ref) {
  return OcrRepository(AppDio.getInstance());
}
