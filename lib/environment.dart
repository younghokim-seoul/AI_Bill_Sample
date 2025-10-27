import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  Environment._();

  static final Environment _instance = Environment._();

  static Environment get instance => _instance;


  String get dotFileName => '.env';
  String get xOcrSecret => dotenv.env['X-OCR-SECRET']!;
  String get openApiKey => dotenv.env['OPENAPI_KEY']!;
}