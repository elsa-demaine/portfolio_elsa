import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  NavigatorState get navigator => Navigator.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

class HtmlText extends StatefulWidget {
  final String text;
  final Style? style;

  const HtmlText({super.key, required this.text, this.style });

  @override
  State<HtmlText> createState() => _HtmlTextState();
}

class _HtmlTextState extends State<HtmlText> {
  @override
  Widget build(BuildContext context) {
    return Html(
      shrinkWrap: true,
      data: widget.text,
      extensions: [
        TagExtension.inline(tagsToExtend: {"indent"}, child: const TextSpan(text: "    ")),
        TagExtension(
          tagsToExtend: {"tooltip"},
          builder: (extensionContext) {
            return Tooltip(
              message: extensionContext.id,
              verticalOffset: 10,
              child: Text(
                extensionContext.innerHtml,
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
            );
          },
        ),
      ],
      onLinkTap: (url, _, __) {
        launchUrl(Uri.parse(url!));
      },
      style: {
        "*": widget.style ?? Style(margin: Margins.zero),
      },
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
    );
  }
}
