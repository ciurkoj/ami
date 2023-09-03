import 'package:ami/generated/l10n.dart';
import 'package:ami/src/extensions/build_context.dart';
import 'package:ami/src/pages/home.dart';
import 'package:ami/src/theme/theme_manager_impl.dart';
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
        ChangeNotifierProvider(create: (_) => ThemeManagerImpl.instance),
      ],
      child: const ThemeManagedApp1(),
    );
  }
}
class ThemeManagedApp1 extends StatelessWidget {
  const ThemeManagedApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      highContrastTheme: context.wcagTheme,
      localizationsDelegates: const [
        AmiLocalization.delegate,
      ],
      supportedLocales: AmiLocalization.supportedLocales,
      home: const HomePage(),
    );
  }
}

