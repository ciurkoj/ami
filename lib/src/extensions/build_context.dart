import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_manager1.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => watch<ThemeManager>().currentTheme;
}