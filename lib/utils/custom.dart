import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:portfolio_elsa/utils/all.dart';

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
      ),
    );
  }
}

class ExpItem extends StatefulWidget {
  final String business;
  final String dates;
  final String infos;
  final String imageName;
  final bool isPair;
  final List<Skill> skills;

  const ExpItem({
    super.key,
    required this.business,
    required this.dates,
    required this.infos,
    required this.imageName,
    required this.isPair,
    required this.skills,
  });

  @override
  ExpItemState createState() => ExpItemState();
}

class ExpItemState extends State<ExpItem> {

  @override
  Widget build(BuildContext context) {
    bool orientation = MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;

    if(orientation && !widget.isPair) {
      return Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: AspectRatio(
              aspectRatio: 3.5,
              child: Image(
                image: AssetImage(widget.imageName),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 2,
                      color: Theme.of(context).colorScheme.onPrimary
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.business,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(widget.dates,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      HtmlText(text: widget.infos),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Wrap(
                          spacing: 5,
                          runSpacing: 5,
                          children: widget.skills.map((skill) => skill.build(context)).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
    else if(orientation && widget.isPair) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: 2,
                      color: Theme.of(context).colorScheme.onPrimary
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.business,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(widget.dates,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      HtmlText(text: "<div style='text-align: right'>${widget.infos}<div//>"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Wrap(
                          spacing: 5,
                          runSpacing: 5,
                          children: widget.skills.map((skill) => skill.build(context)).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: AspectRatio(
              aspectRatio: 3.5,
              child: Image(
                image: AssetImage(widget.imageName),
              ),
            ),
          ),
        ],
      );
    }
    else {
      return Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: AspectRatio(
                    aspectRatio: 3.5,
                    child: Image(
                      image: AssetImage(widget.imageName),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.business,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(widget.dates,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HtmlText(text: widget.infos),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: widget.skills.map((skill) => skill.build(context)).toList(),
                ),
              ),
            ],
          ),
        ],
      );
    }
  }
}
