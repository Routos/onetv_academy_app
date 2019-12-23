
import 'package:academy_app/screen/main_screen.dart';
import 'package:academy_app/screen/onboard_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.light().copyWith(
        accentColorBrightness: Brightness.dark,
        primaryColor: Color(0xFFf50a1c),
        accentColor:  Color(0xFFf50217),
      ),
      home:OnboardingScreen()
    );
  }
}
