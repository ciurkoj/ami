import 'package:ami/src/theme/application/theme_application.dart';
import 'package:flutter/material.dart';

class ThemeLight implements ApplicationTheme {
  static ThemeLight? _instance;

  static ThemeLight get instance {
    _instance ??= ThemeLight._init();
    return _instance!;
  }

  static const _primary = Colors.tealAccent;

  ThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          background: Colors.teal.shade50,
          seedColor: _primary,
          brightness: Brightness.light,
          primary: _primary,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade50,
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all(Colors.blue.shade400)),
        ),
        iconTheme: const IconThemeData(
          size: 30,
        ),
        cardTheme: CardTheme(
          color: Colors.blue.shade400,
          margin: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
      );
}
