import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

import 'generated/l10n.dart';
import 'hobbies.dart';

const Color myDeepPurple = Color.fromARGB(255, 24, 14, 35);
const Color myLightPurple = Color.fromARGB(255, 150, 94, 225);
const Color myLightGreen = Color.fromARGB(255, 0, 204, 125);
const Color myLightBlue = Color.fromARGB(255, 55, 134, 255);

ThemeData myTheme() {
  return ThemeData(
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
      surface: Colors.black,
      onSurface: Colors.white,
    ),
    useMaterial3: true,
  );
}

Map<String, Style> myHtmlStyle = {
  "b": Style(
    fontWeight: FontWeight.bold,
  ),
  "strong": Style(
    fontWeight: FontWeight.bold,
  ),
};

AppBar myAppBar(BuildContext context, String title) {
  return AppBar(
    actions: [
      IconButton(
        tooltip: S.of(context).menu,
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  const MyHobbies()),
          );
        },
      ),
    ],
    backgroundColor: Theme.of(context).colorScheme.primary,
    foregroundColor: Theme.of(context).colorScheme.onPrimary,
    title: Text(title),
  );
}

Container myFooter(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * .10,
    color: Theme.of(context).colorScheme.primary,
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton.icon(
          icon: Image.asset(
              'images/LI-In-Bug.png',
              height: MediaQuery.of(context).size.width * .05,
          ),
          label: Text(
            'elsa-demaine',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          onPressed: _launchLinkedInURL,
        ),
        TextButton.icon(
          icon: Image.asset(
            'images/github-mark.png',
            height: MediaQuery.of(context).size.width * .05,
          ),
          label: Text(
            'This website\'s Github',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          onPressed: _launchGithubURL,
        ),
      ],
    ),
  );
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

// Urls
_launchLinkedInURL() async {
  final Uri url = Uri.parse('https://www.linkedin.com/in/elsa-demaine');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

_launchGithubURL() async {
  final Uri url = Uri.parse('https://github.com/elsa-demaine/portfolio_elsa');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
