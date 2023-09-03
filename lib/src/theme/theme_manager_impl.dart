import 'package:ami/src/theme/application/types/theme_dark.dart';
import 'package:ami/src/theme/application/types/theme_light.dart';
import 'package:ami/src/theme/application/types/theme_wcag.dart';
import 'package:ami/src/theme/theme_manage_interface.dart';
import 'package:flutter/material.dart';

class ThemeManagerImpl extends ChangeNotifier implements ThemeManagerInterface {
  static ThemeManagerImpl? _instance;

  static ThemeManagerImpl get instance {
    _instance ??= ThemeManagerImpl._init();
    return _instance!;
  }

  ThemeManagerImpl._init();

  @override
  ThemeData get lightTheme => ThemeLight.instance.theme;

  @override
  ThemeData get darkTheme => ThemeDark.instance.theme;

  @override
  ThemeData get wcagTheme => ThemeWcag.instance.theme;
}
