import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:portfolio_elsa/utils/theme.dart';

bool isOrientationWidth(BuildContext context) {
  return MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
}

Html normalText(String text) {
  return Html(
    shrinkWrap: true,
    data: text,
  );
}

Html titleText(String text) {
  return Html(
    shrinkWrap: true,
    data: '<strong><u>$text</u></strong>',
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
