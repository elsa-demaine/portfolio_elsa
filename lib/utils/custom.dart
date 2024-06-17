import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:portfolio_elsa/utils/theme.dart';

import '../generated/l10n.dart';

bool isOrientationWidth(BuildContext context) {
  return MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
}

Html htmlText(String text, [Style? myStyle]) {
  myStyle = myStyle ?? Style();

  return Html(
    shrinkWrap: true,
    data: text,
    style: {
      "*": myStyle,
    },
  );
}

Text titleText(String text) {
  return Text(text,
    style: const TextStyle(
      decoration: TextDecoration.underline,
    ),
  );
}

BoxShadow myBoxShadow() {
  return BoxShadow(
    color: Colors.black.withOpacity(0.25),
    spreadRadius: 2,
    blurRadius: 2,
    offset: const Offset(2, 2),
    );
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
    required this.skills
  });

  @override
  ExpItemState createState() => ExpItemState();
}

class ExpItemState extends State<ExpItem> {

  @override
  Widget build(BuildContext context) {
    bool orientation = isOrientationWidth(context);

    if(orientation && !widget.isPair) {
      return Row(
        children: [
          Image.asset(
            widget.imageName,
            width: MediaQuery.of(context).size.width * .25,
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 2,
                    color: Theme.of(context).colorScheme.onPrimary
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  htmlText(widget.business),
                  htmlText(widget.dates),
                  htmlText(widget.infos),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
        ],
      );
    }
    else if(orientation && widget.isPair) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 2,
                    color: Theme.of(context).colorScheme.onPrimary
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  htmlText(widget.business),
                  htmlText(widget.dates),
                  htmlText("<div style='text-align: right'>${widget.infos}<div//>"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      spacing: 5,
                      runSpacing: 5,
                      children: widget.skills.map((skill) => skill.build(context)).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            widget.imageName,
            width: MediaQuery.of(context).size.width * .25,
          ),
        ],
      );
    }
    else {
      return Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.imageName,
                width: MediaQuery.of(context).size.width * .5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  htmlText(widget.business),
                  htmlText(widget.dates),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              htmlText(widget.infos),
              Wrap(
                spacing: 5,
                runSpacing: 5,
                children: widget.skills.map((skill) => skill.build(context)).toList()
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
            myBoxShadow(),
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
            myBoxShadow(),
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
            myBoxShadow(),
          ],
        ),
      },
      child: Text(name),
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
                decoration: BoxDecoration(
                  color: myDarkGreen,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  boxShadow: [
                    myBoxShadow(),
                  ],
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
                  boxShadow: [
                    myBoxShadow(),
                  ],
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
                decoration: BoxDecoration(
                  color: myDarkBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  boxShadow: [
                    myBoxShadow(),
                  ],
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
                  boxShadow: [
                    myBoxShadow(),
                  ],
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
                decoration: BoxDecoration(
                  color: myDarkPurple,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  boxShadow: [
                    myBoxShadow(),
                  ],
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
                  boxShadow: [
                    myBoxShadow(),
                  ],
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
