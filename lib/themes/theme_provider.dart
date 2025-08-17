import 'package:flutter/material.dart';
import 'package:fresh_market_app/themes/themes.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = MyThemes.lightTheme;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == MyThemes.lightTheme) {
      themeData = MyThemes.darkTheme;
    } else {
      themeData = MyThemes.lightTheme;
    }
  }
}
