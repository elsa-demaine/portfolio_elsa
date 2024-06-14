import 'package:flutter/material.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/utils/custom.dart';
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
