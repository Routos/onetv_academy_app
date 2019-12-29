import 'package:academy_app/screen/home_screen.dart';
import 'package:academy_app/screen/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xFFf50a1c),
  accentColor: Color(0xFFf50217),
);
ThemeData themeLight = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFFf50a1c),
  accentColor: Color(0xFFf50217),
);

class ThemeChanger with ChangeNotifier {
  SharedPreferences prefs;
  final String key = "theme";
  final String visitor = "isNew";
  bool _lightTheme;
  bool _isNew;
  bool get chooseTheme => _lightTheme;

  Widget checkVisitor() {
    if (_isNew) {
      return HomeScreenPage();
    } else {
      _saveVisitorToPrefs();
      return OnboardingScreen();
    }
  }

//is called when the app is loading
  ThemeChanger() {
    _lightTheme = false;
    _isNew = true;
    _loadFromPrefs();
  }

  toggleTheme() {
    _lightTheme = !_lightTheme;
    _saveToPrefs();
    notifyListeners();
  }

  _initPrefs() async {
    if (prefs == null) {
      prefs = await SharedPreferences.getInstance();
    }
  }

  _loadFromPrefs() async {
    await _initPrefs();
    _lightTheme = prefs.getBool(key) ?? false;
    _isNew = prefs.getBool(visitor) ?? false;
    notifyListeners();
  }

  _saveToPrefs() async {
    await _initPrefs();
    prefs.setBool(key, _lightTheme);
  }

  _saveVisitorToPrefs() async {
    await _initPrefs();
    prefs.setBool(visitor, true);
  }
}
