import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpt_response_data.freezed.dart';
part 'gpt_response_data.g.dart';

@freezed
class GptResponse with _$GptResponse {
  const factory GptResponse({
    required String summaries,
  }) = _GptResponse;

  factory GptResponse.fromJson(Map<String, dynamic> json) =>
      _$GptResponseFromJson(json);

  static const empty = GptResponse(summaries: '');
}


