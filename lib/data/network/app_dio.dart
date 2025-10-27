import 'package:ai_bill/environment.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';


abstract class AppDio {
  AppDio._internal();

  static Dio? _instance;

  static Dio getInstance() => _instance ??= _AppDio();
}

class _AppDio with DioMixin implements Dio {
  _AppDio() {
    httpClientAdapter = IOHttpClientAdapter();
    options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveDataWhenStatusError: true,
      headers: <String, dynamic>{
        'Content-Type' : 'application/json',
        'X-OCR-SECRET' :  Environment.instance.xOcrSecret,
        'accept': 'application/json',
      },
    );

    interceptors.addAll([
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      )
    ]);
  }
}

final String _baseUrl = 'https://eeh97moe32.apigw.ntruss.com/custom/v1/47123/62428b577d7f3952e6bcf2d079e5c2d6eaa58a2ffd4c9f9d4a9dffaec4e9f829/';
