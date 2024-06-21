import 'package:flutter/material.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/utils/all.dart';
import 'package:url_launcher/url_launcher.dart';

Container myFooter(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 56,
    color: Theme.of(context).colorScheme.primary,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HoverTextButtonIcon(
          icon: Image.asset('assets/images/LI-In-Bug.png'),
          text: S.of(context).linkedin,
          onPressed: _launchLinkedInURL),
        HoverTextButtonIcon(
          icon: Image.asset('assets/images/github-mark.png'),
          text: S.of(context).github,
          onPressed: _launchGithubURL),
        Text(S.of(context).version),
      ],
    ),
  );
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
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          onPressed: widget.onPressed,
        ),
      ),
    );
  }
}
