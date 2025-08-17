import 'package:flutter/material.dart';

class MyThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color.fromARGB(255, 232, 168, 72),
    primaryColor: const Color.fromARGB(255, 72, 136, 232),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}