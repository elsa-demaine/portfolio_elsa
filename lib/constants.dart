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
const Color hover = Color.fromARGB(50, 0, 0, 0);

bool isOrientationWidth(BuildContext context) {
  return MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
}

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
      surface: Colors.black,
      onSurface: Colors.white,
    ),
    useMaterial3: true,
  );
}

Html normalText(String text, Style? myStyle) {
  myStyle = myStyle ?? Style();

  return Html(
    shrinkWrap: true,
    data: text,
    style: {
      "*": myStyle,
    },
  );
}

Html titleText(String text, Style? myStyle) {
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
              padding: const EdgeInsets.all(8),
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
              )),
              PopupMenuItem(
                child: ListTile(
                  hoverColor: Colors.transparent,
                  textColor: Theme.of(context).colorScheme.onSecondary,
                  title:
                      Text(S.of(context).hobbies, textAlign: TextAlign.center),
                  onTap: () {
                    Navigator.of(context).pop();
                    navigateTo(context, "/hobbies");
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
    height: 56,
    color: Theme.of(context).colorScheme.primary,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HoverTextButtonIcon(
            icon: Image.asset('images/LI-In-Bug.png'),
            text: S.of(context).linkedin,
            onPressed: _launchLinkedInURL),
        HoverTextButtonIcon(
            icon: Image.asset('images/github-mark.png'),
            text: S.of(context).github,
            onPressed: _launchGithubURL),
      ],
    ),
  );
}

class HoverTextButtonIcon extends StatefulWidget {
  final Widget icon;
  final String text;
  final Function()? onPressed;

  const HoverTextButtonIcon({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  HoverTextButtonIconState createState() => HoverTextButtonIconState();
}

class HoverTextButtonIconState extends State<HoverTextButtonIcon> {
  Color _containerColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (_) {
          setState(() {
            _containerColor = hover;
          });
        },
        onExit: (_) {
          setState(() {
            _containerColor = Colors.transparent;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: _containerColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: TextButton.icon(
            icon: widget.icon,
            label: Text(
              widget.text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            onPressed: widget.onPressed,
          ),
        ),
    );
  }
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
