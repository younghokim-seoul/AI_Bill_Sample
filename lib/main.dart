import 'dart:developer';

import 'package:ai_bill/environment.dart';
import 'package:ai_bill/feature/home/home_screen.dart';
import 'package:arc/arc.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dart_openai/dart_openai.dart' as forWhisper;
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFF1173d4);
const Color backgroundLight = Color(0xFFF6F7F8);
const Color backgroundDark = Color(0xFF101922);
const Color textLight = Color(0xFF0F172A);
const Color textDark = Color(0xFFF8FAFC);
const Color textMutedLight = Color(0xFF475569);
const Color textMutedDark = Color(0xFF94A3B8);

final GlobalKey<NavigatorState> rootNavigatorKey = Arc().navigatorKey;

void main() async {
  await setup();
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: Environment.instance.dotFileName);

  log("openApiKey => " + Environment.instance.openApiKey);

  OpenAI.instance.build(
    token: Environment.instance.openApiKey,
    baseOption: HttpSetup(
      receiveTimeout: const Duration(seconds: 10),
      connectTimeout: const Duration(seconds: 10),
    ),
    enableLog: true,
  );

  forWhisper.OpenAI.apiKey = Environment.instance.openApiKey;
  forWhisper.OpenAI.requestsTimeOut = const Duration(seconds: 90);
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = GoogleFonts.notoSansKrTextTheme(
      Theme.of(context).textTheme,
    );
    final lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundLight,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        background: backgroundLight,
        onBackground: textLight,
        surface: Colors.white,
        onSurface: textLight,
      ),
      textTheme: textTheme.apply(bodyColor: textLight, displayColor: textLight),
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundLight,
        foregroundColor: textLight,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),
      ),
    );

    return MaterialApp(
      navigatorKey: rootNavigatorKey,
      title: 'AI 고지서 스캔',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
