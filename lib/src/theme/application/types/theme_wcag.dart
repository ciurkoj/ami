import 'package:ami/src/theme/application/theme_application.dart';
import 'package:flutter/material.dart';

class ThemeWcag extends ApplicationTheme {
  static ThemeWcag? _instance;

  static ThemeWcag get instance {
    _instance ??= ThemeWcag._init();
    return _instance!;
  }

  static const _primary = Colors.yellow;

  ThemeWcag._init();

  @override
  ThemeData get theme => ThemeData(
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
