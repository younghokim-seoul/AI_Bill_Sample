import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  TtsService._();

  static final FlutterTts _tts = FlutterTts();

  static Future<void> initialize() async {
    await _tts.awaitSpeakCompletion(true);
    await _tts.setLanguage("ko-KR");
    await _tts.setSpeechRate(0.5); // 재생 속도 (0.0 ~ 1.0)
    await _tts.setVolume(1.0); // 볼륨 (0.0 ~ 1.0)
    await _tts.setPitch(1.0); // 음높이 (0.5 ~ 2.0)
  }

  static Future<void> speak(String text) async {
    await _tts.speak(text);
  }

  static Future<void> stop() async {
    await _tts.stop();
  }
}
