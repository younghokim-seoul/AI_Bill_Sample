import 'package:ai_bill/main.dart';
import 'package:flutter/material.dart';

abstract class SnackBarService {
  SnackBarService._();

  static void showSnackBar(String text) {
    ScaffoldMessenger.of(rootNavigatorKey.currentContext!)
        .hideCurrentSnackBar();
    ScaffoldMessenger.of(rootNavigatorKey.currentContext!).clearSnackBars();
    ScaffoldMessenger.of(rootNavigatorKey.currentContext!).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 800),
        content: Text(
          text,
          style: Theme.of(rootNavigatorKey.currentContext!).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
