import 'package:ami/generated/l10n.dart';
import 'package:ami/src/pages/home.dart';
import 'package:ami/src/theme/theme_manager1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeManager.instance),
      ],
      child: MaterialApp(
        theme: context.watch<ThemeManager>().currentTheme,
        darkTheme: context.read<ThemeManager>().darkTheme,
        highContrastTheme: context.read<ThemeManager>().wcagTheme,
        localizationsDelegates: const [
          AmiLocalization.delegate,
        ],
        supportedLocales: AmiLocalization.supportedLocales,
        home: const HomePage(),
      ),
    );
  }
}
