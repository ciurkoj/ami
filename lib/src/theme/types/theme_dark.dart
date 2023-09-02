import 'package:ami/src/theme/application/them_application.dart';
import 'package:flutter/material.dart';

class ThemeDark extends ApplicationTheme {
  static ThemeDark? _instance;

  static ThemeDark get instance {
    _instance ??= ThemeDark._init();
    return _instance!;
  }

  static const _primary = Color(0xFF0A69B5);

  ThemeDark._init();

  @override
  ThemeData? get theme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primary,
      brightness: Brightness.dark,
      primary: _primary,
    ),
    cardTheme: const CardTheme(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(),
    ),
  );
}
