import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  static const _primary = Color(0xFF0A69B5);
  static const _darkPrimary = Color(0xFF41A5F5);

  late ThemeData _themeData;

  ThemeManager() {
    _themeData = _getThemeData(
      _primary,
    ).copyWith(
      brightness: Brightness.light,
    );
  }

  ThemeData get themeData => _themeData;

  void setNewLightTheme(Color navigationColor) {
    _themeData = _getThemeData(navigationColor);
    notifyListeners();
  }

  ThemeData _getThemeData(Color primaryColor) {
    var colorSchema = ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
      background: const Color(0xFFE7ECF4),
      onBackground: const Color(0xFF6A6A6A),
      outlineVariant: const Color(0xFFC3C6CF),
      onSurface: const Color(0xFF000000),
      onSurfaceVariant: const Color(0xFF737373),
      primary: primaryColor,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorSchema,
      cardTheme: const CardTheme(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(),
      ),

    );
  }

  ThemeData getDarkThemeData() {
    final colorSchema = ColorScheme.fromSeed(
      seedColor: _darkPrimary,
      primary: _darkPrimary,
    );
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: colorSchema,
      cardTheme: CardTheme(
        color: colorSchema.surface,
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(),
      ),

    );
  }

  ThemeData getWcagThemeData() {
    final colorSchema = ColorScheme.fromSeed(
      seedColor: Colors.black,
      primary: Colors.yellow,
    );
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: colorSchema,
      cardTheme: const CardTheme(
        color: Colors.black,
        margin: EdgeInsets.zero,
        shadowColor: Colors.yellow,
        shape: RoundedRectangleBorder(),
      ),
    );
  }

  void reset() {
    setNewLightTheme(_primary);
  }
}
