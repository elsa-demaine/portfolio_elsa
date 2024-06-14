import 'package:flutter/material.dart';

const Color myDeepPurple = Color.fromARGB(255, 24, 14, 35);
const Color myLightPurple = Color.fromARGB(255, 150, 94, 225);
//const Color myLightSurface = Color.fromARGB(255, 213, 213, 247);
const Color myLightSurface = Color.fromARGB(255, 245, 245, 225);
const Color myLightGreen = Color.fromARGB(255, 0, 204, 125);
const Color myLightBlue = Color.fromARGB(255, 55, 134, 255);
const Color hover = Color.fromARGB(50, 0, 0, 0);

ThemeData myTheme() {
  return ThemeData(
    hoverColor: hover,
    fontFamily: 'Luciole',
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: myLightPurple,
      onPrimary: myDeepPurple,
      secondary: myLightGreen,
      onSecondary: Colors.black,
      tertiary: myLightBlue,
      onTertiary: Colors.black,
      error: Colors.red,
      onError: Colors.black,
      surface: myLightSurface,
      onSurface: Colors.black,
    ),
    useMaterial3: true,
  );
}
