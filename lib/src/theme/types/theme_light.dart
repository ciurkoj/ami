import 'package:ami/src/theme/application/them_application.dart';
import 'package:flutter/material.dart';

class ThemeLight extends ApplicationTheme {
  static ThemeLight? _instance;

  static ThemeLight get instance {
    _instance ??= ThemeLight._init();
    return _instance!;
  }

  static const _primary = Color(0xFF0A69B5);

  ThemeLight._init();

  @override
  ThemeData? get theme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _primary,
          brightness: Brightness.light,
          primary: _primary,
        ),
        cardTheme: const CardTheme(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(),
        ),
      );
}
