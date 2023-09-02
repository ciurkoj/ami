import 'package:ami/src/theme/theme_manage_interface.dart';
import 'package:ami/src/theme/types/theme_dark.dart';
import 'package:ami/src/theme/types/theme_light.dart';
import 'package:flutter/material.dart';

enum ThemeEnum { dark, light, wcag }

class ThemeManager extends ChangeNotifier implements ThemeManagerInterface {
  static ThemeManager? _instance;

  static ThemeManager get instance {
    _instance ??= ThemeManager._init();
    return _instance!;
  }

  ThemeManager._init();

  @override
  ThemeData currentTheme = ThemeEnum.light.generateTheme;

  @override
  ThemeEnum currentThemeEnum = ThemeEnum.light;
  @override
  ThemeData darkTheme = ThemeEnum.dark.generateTheme;
  @override
  ThemeData wcagTheme = ThemeEnum.wcag.generateTheme;

  @override
  void changeTheme(ThemeEnum newTheme) {
    if (newTheme != currentThemeEnum) {
      currentTheme = newTheme.generateTheme;
      currentThemeEnum = newTheme;
      notifyListeners();
    }
    return;
  }
}

extension ThemeEnumExtension on ThemeEnum {
  ThemeData get generateTheme {
    switch (this) {
      case ThemeEnum.dark:
        return ThemeLight.instance.theme!;
      case ThemeEnum.light:
        return ThemeDark.instance.theme!;
      case ThemeEnum.wcag:
        return ThemeDark.instance.theme!;
      default:
        return ThemeLight.instance.theme!;
    }
  }
}
