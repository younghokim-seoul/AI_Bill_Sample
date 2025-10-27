import 'dart:developer';

import 'package:ai_bill/confirmation/confirmation_screen.dart';
import 'package:ai_bill/provider/picked_img.dart';
import 'package:arc/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    log("HomeScreen");


    ref.listen(pickedImgProvider, (_, next) {
      log("picked File => $next");
      Arc.pop();
      Arc.push(ConfirmationScreen());
    });


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AI 고지서 스캔',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "고지서 분석 시작하기",
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(8),
              Text(
                "아래 버튼을 눌러 고지서를 선택하세요.",
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              Gap(32),
              SizedBox(
                width: 160,
                height: 160,
                child: ElevatedButton(
                  onPressed: () {
                    onShowOptionBtnTapped(ref);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                    elevation: 8,
                    shadowColor: primaryColor.withAlpha(20),
                  ),
                  child: const Icon(Icons.add_a_photo_outlined, size: 72.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onShowOptionBtnTapped(WidgetRef ref) {
    log("onShowOptionBtnTapped tapped");
    final theme = Theme.of(ref.context);
    showModalBottomSheet(
      context: ref.context,
      backgroundColor: Colors.transparent, // 시트 배경을 투명하게
      builder: (ctx) => Container(
        // HTML의 rounded-t-2xl (24px) 적용
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                width: 36.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFCBD5E1), // slate-700 / slate-300
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
            // ListTile(
            //   leading: const Icon(
            //     Icons.photo_camera_outlined,
            //     color: primaryColor,
            //   ),
            //   title: const Text(
            //     "사진 촬영",
            //     style: TextStyle(fontWeight: FontWeight.w600),
            //   ),
            //   onTap: () {
            //
            //   },
            // ),
            ListTile(
              leading: const Icon(
                Icons.photo_library_outlined,
                color: primaryColor,
              ),
              title: const Text(
                "갤러리에서 가져오기",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                ref.read(pickedImgProvider.notifier).pickImageFile();
              },
            ),
            Divider(
              color: const Color(0xFFE2E8F0),
              height: 16.0,
              indent: 16.0,
              endIndent: 16.0,
            ),
            ListTile(
              title: Center(
                child: Text(
                  "취소",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              onTap: () {
                Arc.pop();
              },
            ),
            // 하단 안전 영역 확보
            SizedBox(height: MediaQuery.of(ref.context).padding.bottom),
          ],
        ),
      ),
    );
  }
}
