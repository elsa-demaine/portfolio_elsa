
import 'package:flutter/material.dart';
import '../hobbies.dart';

class Constants {
  static const Color myPurple = Color.fromARGB(255, 94, 0, 196);
  static const Color myDeepPurple = Color.fromARGB(255, 24, 14, 35);
  static const Color myLightPurple = Color.fromARGB(255, 149, 94, 225);
  static const Color myGreen = Color.fromARGB(255, 42, 255, 0);
  static const Color myLightBlue = Color.fromARGB(255, 56, 135, 255);
  static const Color myDeepBlue = Color.fromARGB(255, 23, 35, 55);
  static const Color myLightGreen = Color.fromARGB(255, 0, 166, 123);
  static const Color myDeepGreen = Color.fromARGB(255, 17, 42, 36);

  static ThemeData myTheme() {
    return ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Constants.myLightPurple,
          onPrimary: Constants.myDeepPurple,
          secondary: Constants.myLightBlue,
          onSecondary: Colors.black,
          tertiary: Constants.myLightGreen,
          onTertiary: Colors.black,
          error: Colors.red,
          onError: Colors.black,
          surface: Colors.black,
          onSurface: Colors.white,
        ),
      /*ColorScheme.fromSeed(
        seedColor: Colors.tealAccent,
        brightness: Brightness.dark,
      ),*/
      useMaterial3: true,
    );
  }

  static AppBar myAppBar(BuildContext context, String title) {
    return AppBar(
      actions: [
        IconButton(
          tooltip: 'Menu',
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MyHobbies();
                },
              ),
            );
          },
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      title: Text(title),
    );
  }

  static Container myFooter(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.primary,
      child: Text(
        'Mon Pied !',
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
