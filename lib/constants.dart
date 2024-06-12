import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/routing.dart';
import 'package:url_launcher/url_launcher.dart';

const Color myDeepPurple = Color.fromARGB(255, 24, 14, 35);
const Color myLightPurple = Color.fromARGB(255, 150, 94, 225);
const Color myLightGreen = Color.fromARGB(255, 0, 204, 125);
const Color myLightBlue = Color.fromARGB(255, 55, 134, 255);

bool isOrientationWidth(BuildContext context) {
  return MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
}

ThemeData myTheme() {
  return ThemeData(
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
      surface: Colors.black,
      onSurface: Colors.white,
    ),
    useMaterial3: true,
  );
}

normalText(String text, Style? myStyle) {
  myStyle = myStyle ?? Style();

  return Html(
    shrinkWrap: true,
    data: text,
    style: {
      "*": myStyle,
    },
  );
}

titleText(String text, Style? myStyle) {
  myStyle = myStyle ?? Style();

  return Html(
    shrinkWrap: true,
    data: '<strong><u>$text</u></strong>',
    style: {
      "*": myStyle,
    },
  );
}

AppBar myAppBar(BuildContext context, String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(title),
    backgroundColor: Theme.of(context).colorScheme.primary,
    foregroundColor: Theme.of(context).colorScheme.onPrimary,
    actions: [
      MenuBar(
        style: const MenuStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(Colors.transparent),
          padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
          elevation: WidgetStatePropertyAll<double>(0),
        ),
        children: [
          PopupMenuButton(
            color: Theme.of(context).colorScheme.secondary,
            padding: EdgeInsets.zero,
            position: PopupMenuPosition.under,
            tooltip: S.of(context).menu,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.menu,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: ListTile(
                    hoverColor: Colors.transparent,
                    textColor: Theme.of(context).colorScheme.onSecondary,
                    title: Text(S.of(context).home, textAlign: TextAlign.center),
                    onTap: () {
                      Navigator.of(context).pop();
                      navigateTo(context, "/home");
                    },
                )
              ),
              PopupMenuItem(
                child: ListTile(
                  hoverColor: Colors.transparent,
                  textColor: Theme.of(context).colorScheme.onSecondary,
                  title: Text(S.of(context).hobbies, textAlign: TextAlign.center),
                  onTap: () {
                    Navigator.of(context).pop();
                    navigateTo(context, "/hobbies");
                    /*context.
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyHobbies(),
                      ),
                    );*/
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ],
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
            'My Github',
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
  final Uri url = Uri.parse('https://github.com/elsa-demaine');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
