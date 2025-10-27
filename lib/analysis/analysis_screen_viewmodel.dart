

import 'dart:developer';

import 'package:ai_bill/data/repository/ocr_repository.dart';
import 'package:ai_bill/provider/picked_img.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analysis_screen_viewmodel.freezed.dart';

part 'analysis_screen_viewmodel.g.dart';

@freezed
class AnalysisUiState with _$AnalysisUiState {
  factory AnalysisUiState({required bool isLoading}) = _AnalysisUiState;
}

@riverpod
class AnalysisScreenViewModel extends _$AnalysisScreenViewModel {
  @override
  AnalysisUiState build() {
    Future.microtask(() {
      _init();
    });
    return AnalysisUiState(isLoading: false);
  }

  Future<void> _init() async {
    log("AnalysisScreenViewModel init");
    state = state.copyWith(isLoading: true);

    final ocrRepository = ref.watch(ocrRepositoryProvider);
    final pickedFile = ref.watch(pickedImgProvider);

    log("pickedFile =>> $pickedFile");

    final asd = await ocrRepository.getOcrData(pickedFile!);
  }
}
