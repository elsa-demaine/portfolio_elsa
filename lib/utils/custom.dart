import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:portfolio_elsa/utils/theme.dart';

import '../generated/l10n.dart';

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
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: AspectRatio(
                    aspectRatio: 3.5,
                    child: Image(
                      image: AssetImage(widget.imageName),
                    ),
                  ),
                ),
              ),
              Column(
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
                    ),
                  ),
                ],
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

enum SkillType { hard, soft, mad }

class Skill extends StatelessWidget{
  final String name;
  final SkillType type;

  const Skill({
    super.key,
    required this.name,
    required this.type
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: switch(type) {
          SkillType.hard => BoxDecoration(
            color: myLightGreen,
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
            border: Border.all(
              color: myDarkGreen,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          SkillType.soft => BoxDecoration(
            color: myLightBlue,
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
            border: Border.all(
              color: myDarkBlue,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          SkillType.mad => BoxDecoration(
            color: myLightPurple,
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
            border: Border.all(
              color: myDarkPurple,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(2, 2),
              ),
            ],
          ),
        },
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(name),
      ),
    );
  }
}

Widget skillsTable(BuildContext context, List<Skill> skills) {
  List<Skill> hardSkills = [];
  List<Skill> softSkills = [];
  List<Skill> madSkills = [];

  for(Skill skill in skills) {
    switch(skill.type) {
      case SkillType.hard:
        hardSkills.add(skill);
        break;
      case SkillType.soft:
        softSkills.add(skill);
        break;
      case SkillType.mad:
        madSkills.add(skill);
        break;
    }
  }

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .25,
                decoration: const BoxDecoration(
                  color: myDarkGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Text(S.of(context).skillTitleHard, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * .25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: myLightGreen.withOpacity(0.75),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: hardSkills.map((skill) => skill.build(context)).toList()
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Flexible(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .25,
                decoration: const BoxDecoration(
                  color: myDarkBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Text(S.of(context).skillTitleSoft, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * .25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: myLightBlue.withOpacity(0.75),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: softSkills.map((skill) => skill.build(context)).toList()
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Flexible(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .25,
                decoration: const BoxDecoration(
                  color: myDarkPurple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Text(S.of(context).skillTitleMad, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * .25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: myLightPurple.withOpacity(0.75),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: madSkills.map((skill) => skill.build(context)).toList()
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
