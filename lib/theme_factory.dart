import 'package:flutter/material.dart';

class ThemeFactory {
  static ThemeData get() {
    return ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
        primary: Colors.deepOrange,
        primaryContainer: Colors.orange,
        onPrimaryContainer: Colors.white,
      ),
    );
  }
}
