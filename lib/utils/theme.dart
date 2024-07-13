import 'dart:ui';

import 'package:portfolio_elsa/all.dart';

const Color myLightSurface = Color.fromARGB(255, 230, 230, 255);
const Color myLightPurple = Color.fromARGB(255, 150, 94, 225);
const Color myDarkPurple = Color.fromARGB(255, 50, 0, 125);
const Color myLightGreen = Color.fromARGB(255, 0, 204, 125);
const Color myDarkGreen = Color.fromARGB(255, 0, 104, 25);
const Color myLightBlue = Color.fromARGB(255, 55, 134, 255);
const Color myDarkBlue = Color.fromARGB(255, 0, 34, 155);
const Color hover = Color.fromARGB(50, 0, 0, 0);

final darkNotifier = ValueNotifier<bool>(PlatformDispatcher.instance.platformBrightness == Brightness.light ? true : false);

ThemeData myDarkTheme(BuildContext context) {
  return ThemeData(
    hoverColor: hover,
    fontFamily: 'Luciole',
    scrollbarTheme: const ScrollbarThemeData(
      thumbVisibility: WidgetStatePropertyAll(true),
      thumbColor: WidgetStatePropertyAll(myLightPurple),
      radius: Radius.circular(16),
      thickness: WidgetStatePropertyAll(7),
    ),
    textTheme: context.theme.textTheme.apply(
        fontSizeFactor: 1.2,
        bodyColor: Colors.white,
        decorationColor: Colors.white),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: myDarkPurple,
      onPrimary: myLightPurple,
      secondary: myDarkGreen,
      onSecondary: myLightGreen,
      tertiary: myDarkBlue,
      onTertiary: myLightBlue,
      error: Colors.red,
      onError: Colors.black,
      surface: Colors.black,
      onSurface: Colors.white,
    ),
    useMaterial3: true,
  );
}

ThemeData myLightTheme(BuildContext context) {
  return ThemeData(
    hoverColor: hover,
    fontFamily: 'Luciole',
    scrollbarTheme: const ScrollbarThemeData(
      thumbVisibility: WidgetStatePropertyAll(true),
      thumbColor: WidgetStatePropertyAll(myDarkPurple),
      radius: Radius.circular(16),
      thickness: WidgetStatePropertyAll(7),
    ),
    textTheme: context.theme.textTheme.apply(
        fontSizeFactor: 1.2,
        bodyColor: Colors.black,
        decorationColor: Colors.black),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: myLightPurple,
      onPrimary: myDarkPurple,
      secondary: myLightGreen,
      onSecondary: myDarkGreen,
      tertiary: myLightBlue,
      onTertiary: myDarkBlue,
      error: Colors.red,
      onError: Colors.black,
      surface: myLightSurface,
      onSurface: Colors.black,
    ),
    useMaterial3: true,
  );
}
