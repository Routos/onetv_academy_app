import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}


ThemeData themDark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xFFf50a1c),
  accentColor: Color(0xFFf50217),
);
ThemeData themeLight = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFFf50a1c),
  accentColor: Color(0xFFf50217),
);