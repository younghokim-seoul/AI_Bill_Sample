import 'dart:developer';

import 'package:ai_bill/data/dto/gpt_response_data.dart';
import 'package:ai_bill/data/repository/ocr_repository.dart';
import 'package:ai_bill/provider/picked_img.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analysis_screen_viewmodel.freezed.dart';

part 'analysis_screen_viewmodel.g.dart';

@freezed
class AnalysisUiState with _$AnalysisUiState {
  factory AnalysisUiState({required bool isLoading,required GptResponse response,required bool isError}) = _AnalysisUiState;

}

@riverpod
class AnalysisScreenViewModel extends _$AnalysisScreenViewModel {
  @override
  AnalysisUiState build() {
    Future.microtask(() {
      _init();
    });
    return AnalysisUiState(isLoading: false,response: GptResponse.empty,isError: false);
  }

  Future<void> _init() async {

    state = state.copyWith(isLoading: true);

    try{
      final ocrRepository = ref.watch(ocrRepositoryProvider);
      final pickedFile = ref.watch(pickedImgProvider);
      final ocrPlain = await ocrRepository.getOcrData(pickedFile!);
      final summary = await ocrRepository.getSummaryAi(ocrPlain);
      state = state.copyWith(isLoading: false,response: summary,isError: false);
    }catch(e){
      state = state.copyWith(isLoading: false,isError: true);
      return;
    }
  }
}
