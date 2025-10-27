
import 'dart:io';

import 'package:ai_bill/util/app_dialog.dart';
import 'package:ai_bill/util/dialog_service.dart';
import 'package:ai_bill/util/snack_bar_service.dart';
import 'package:app_settings/app_settings.dart';
import 'package:arc/arc.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_bill/main.dart';


part 'picked_img.g.dart';

@riverpod
class PickedImg extends _$PickedImg {
  @override
  File? build() {
    return null;
  }

  /// Image picker 리소스 객체
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImageFile() async {
    try {
      final imageSource = await _picker.pickImage(source: ImageSource.gallery);
      if (imageSource != null) {
        state = File(imageSource.path);
      }
    } on Exception catch (e) {
      if (e is PlatformException) {
        DialogService.show(
          dialog: AppDialog.dividedBtn(
            title: '권한 허용',
            subTitle: '사진첩 접근 권한을 허용해주셔야 프로필 이미지를 변경할 수 있습니다.',
            leftBtnContent: '취소',
            showContentImg: false,
            rightBtnContent: '설정하기',
            onRightBtnClicked: () async {
              Arc.pop();
              await AppSettings.openAppSettings(type: AppSettingsType.internalStorage);
            },
            onLeftBtnClicked: () {
              Arc.pop();
            },
          ),
        );
      } else {
        SnackBarService.showSnackBar('사진첩에서 정상적으로 이미지를 불러오지 못했어요. 다시 시도해주세요');
      }
    }
  }

}

