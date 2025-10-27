import 'package:ai_bill/analysis/analysis_screen_viewmodel.dart';
import 'package:ai_bill/main.dart';
import 'package:arc/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AnalysisScreen extends ConsumerWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final analysisViewModel = ref.watch(analysisScreenViewModelProvider);

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
                        valueColor: const AlwaysStoppedAnimation(primaryColor),
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
    );
  }
}
