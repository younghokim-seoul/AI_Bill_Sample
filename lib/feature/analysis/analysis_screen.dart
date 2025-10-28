import 'dart:developer';

import 'package:ai_bill/data/dto/gpt_response_data.dart';
import 'package:ai_bill/feature/summary/ai_summary_result_page.dart';
import 'package:ai_bill/main.dart';
import 'package:ai_bill/util/snack_bar_service.dart';
import 'package:arc/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'analysis_screen_viewmodel.dart';

class AnalysisScreen extends ConsumerStatefulWidget {
  const AnalysisScreen({super.key});

  @override
  ConsumerState createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends ConsumerState<AnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    ref.listen(analysisScreenViewModelProvider, (_, next) {
      log("analysisScreenViewModelProvider listen $next");

      if (next.isError) {
        SnackBarService.showSnackBar("분석에 실패했습니다. 다시 시도해주세요.");
      }

      if (next.response != GptResponse.empty) {
        Arc.push(AiSummaryResultPage(next.response));
      }
    });

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (didPop) return;
        Arc.pushNamedAndRemoveUntil("/");
      },
      child: Scaffold(
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 96),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Animated Loading Indicator
                SizedBox(
                  width: 112, // h-28, w-28 (7rem = 112px)
                  height: 112,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 112,
                        height: 112,
                        child: CircularProgressIndicator(
                          strokeWidth: 4.0,
                          valueColor: const AlwaysStoppedAnimation(
                            primaryColor,
                          ),
                          backgroundColor: primaryColor.withOpacity(0.2),
                        ),
                      ),

                      const Icon(
                        Icons.document_scanner_outlined,
                        size: 56,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
                Gap(32),
                Text(
                  "고지서 분석 중...",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                Gap(12),
                Text(
                  "AI가 핵심 내용을 정확하게 요약하고 있습니다.잠시만 기다려 주세요.", // 상태 메시지를 동적으로 표시
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: textMutedLight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
