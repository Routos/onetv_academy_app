import 'package:academy_app/screen/main_screen.dart';
import 'package:academy_app/utilities/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Consumer<ThemeChanger>(
        builder: (context, ThemeChanger notifier, chile) {
          return MaterialApp(
              theme: notifier.chooseTheme ? themeDark : themeLight,
              debugShowCheckedModeBanner: false,
              home: MainScreenPage());
        },
      ),
    );
  }
}
