import 'package:flutter/material.dart';

const Color myDeepPurple = Color.fromARGB(255, 24, 14, 35);

const Color myLightPurple = Color.fromARGB(255, 150, 94, 225);
const Color myDarkPurple = Color.fromARGB(255, 50, 0, 125);
const Color myLightGreen = Color.fromARGB(255, 0, 204, 125);
const Color myDarkGreen = Color.fromARGB(255, 0, 104, 25);
const Color myLightBlue = Color.fromARGB(255, 55, 134, 255);
const Color myDarkBlue = Color.fromARGB(255, 0, 34, 155);

const Color myLightSurface = Color.fromARGB(255, 230, 230, 255);
const Color hover = Color.fromARGB(50, 0, 0, 0);

ThemeData myTheme(BuildContext context) {
  return ThemeData(
    hoverColor: hover,
    fontFamily: 'Luciole',
    textTheme: Theme.of(context).textTheme.apply(
      fontSizeFactor: 1.5,
      fontSizeDelta: 2.0,
    ),
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
