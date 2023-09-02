import 'package:ami/src/theme/theme_manager1.dart';
import 'package:flutter/material.dart';

abstract class ThemeManagerInterface {
  late ThemeData currentTheme;
  late ThemeData darkTheme;
  late ThemeData wcagTheme;
  late ThemeEnum currentThemeEnum;

  void changeTheme(ThemeEnum theme);
}