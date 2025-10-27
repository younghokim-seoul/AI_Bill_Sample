import 'dart:io';

import 'package:path/path.dart' as p;

String extFromPath(String pathOrName) {
  String ext = p.extension(pathOrName).replaceFirst('.', '').toLowerCase();
  if (ext == 'jpeg') ext = 'jpg';
  return ext;
}
String fileNameFromFile(File file) {
  return p.basename(file.path);
}