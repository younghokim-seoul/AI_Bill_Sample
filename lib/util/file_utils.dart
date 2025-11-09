import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

String extFromPath(String pathOrName) {
  String ext = p.extension(pathOrName).replaceFirst('.', '').toLowerCase();
  if (ext == 'jpeg') ext = 'jpg';
  return ext;
}

String fileNameFromFile(File file) {
  return p.basename(file.path);
}

Future<File> convertBase64ToFile(String base64String) async {
  String base64Content = base64String;
  if (base64String.contains(',')) {
    base64Content = base64String.split(',')[1];
  }

  Uint8List bytes;
  try {
    bytes = base64Decode(base64Content);
  } catch (e) {
    log('Base64 디코딩 오류: $e');
    rethrow;
  }

  final Directory tempDir = await getTemporaryDirectory();

  String fileName = 'image_${DateTime.now().millisecondsSinceEpoch}.png';
  String filePath = '${tempDir.path}/$fileName';

  File file = File(filePath);
  await file.writeAsBytes(bytes);

  log('파일 저장 완료: ${file.path}');
  return file;
}
