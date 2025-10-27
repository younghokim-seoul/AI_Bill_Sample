import 'dart:convert';
import 'dart:developer';

import 'package:ai_bill/analysis/analysis_screen.dart';
import 'package:ai_bill/data/dto/ocr_request_data.dart';
import 'package:ai_bill/data/repository/ocr_repository.dart';
import 'package:ai_bill/provider/picked_img.dart';
import 'package:ai_bill/util/app_uuid.dart';
import 'package:ai_bill/util/file_utils.dart';
import 'package:arc/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfirmationScreen extends ConsumerWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final ocrRepository = ref.watch(ocrRepositoryProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: theme.colorScheme.onSurface),
          onPressed: () => Arc.pop(),
        ),
        title: Text("이미지 확인", style: theme.appBarTheme.titleTextStyle),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Column(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 3 / 4,
                      child: Builder(builder: (context) {
                        final pickedImg = ref.watch(pickedImgProvider);

                        if (pickedImg == null) {
                          return Center(
                            child: Text(
                              "이미지를 불러올 수 없습니다.",
                              style: theme.textTheme.bodyLarge,
                            ),
                          );
                        }
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.file(
                            pickedImg,
                            fit: BoxFit.contain,
                          ),
                        );
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      "분석할 고지서가 맞는지 확인해주세요.",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          border: Border(
            top: BorderSide(
              color: const Color(0xFFE2E8F0),
              width: 1,
            ),
          ),
        ),
        padding: EdgeInsets.fromLTRB(
          16,
          12,
          16,
          12 + MediaQuery
              .of(context)
              .padding
              .bottom,
        ),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(48.0),
              backgroundColor: theme.primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () async {
              // TODO: OCR 분석 시작 로직 구현
              final pickedImg = ref.read(pickedImgProvider);

              if (pickedImg != null) {
                // OCR 분석 로직 호출


                final bytes = await pickedImg.readAsBytes();
                final b64 = base64Encode(bytes);
                String ext = extFromPath(pickedImg.path);

                log("Picked image ext: $ext");
                Arc.push(AnalysisScreen());

              //   final request = OcrRequestData(version: OcrVersion.v2,
              //       requestId: newRequestId(),
              //       timestamp: timestamp,
              //       images: images);
              //
              //   final reqForceKo = OCr(
              //     version: OcrVersion.v2,
              //     requestId: 'uuid-...',
              //     timestamp: DateTime
              //         .now()
              //         .millisecondsSinceEpoch,
              //     lang: Lang.ko,
              //     // 명시적으로 ko
              //     images: [
              //       OcrImage(format: 'png', name: 'img1', data: 'BASE64...'),
              //     ],
              //   );
              //
              //
              //   await ocrRepository.getOcrData(request)
              }
            },
            child: const Text("OCR 고지서 분석"),
          ),
        ),
      ),
    );
  }
}
