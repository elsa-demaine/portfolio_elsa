import 'package:portfolio_elsa/all.dart';

enum SkillType { hard, soft, mad }
enum Subtype { language, tool, other }

class SkillRepo {
  //a
  static HardSkill agile = HardSkill(name: (BuildContext context) => S.current.agile, type: SkillType.hard, subType: Subtype.other);
  static Skill analysis = Skill(name: (BuildContext context) => S.current.analysis, type: SkillType.soft);
  static HardSkill androidStudio = HardSkill(name: (BuildContext context) => S.current.androidStudio, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill aspNet = HardSkill(name: (BuildContext context) => S.current.aspNet, type: SkillType.hard, subType: Subtype.tool);
  static Skill attentionToDetail = Skill(name: (BuildContext context) => S.current.attentionToDetail, type: SkillType.soft);
  static Skill autonomy = Skill(name: (BuildContext context) => S.current.autonomy, type: SkillType.soft);
//b
  static HardSkill bilang = HardSkill(name: (BuildContext context) => S.current.bilang, type: SkillType.hard, subType: Subtype.language);
  static Skill bigPicture = Skill(name: (BuildContext context) => S.current.bigPicture, type: SkillType.soft);
  static HardSkill bootstrap = HardSkill(name: (BuildContext context) => S.current.bootstrap, type: SkillType.hard, subType: Subtype.language,);
//c
  static HardSkill cSharp = HardSkill(name: (BuildContext context) => S.current.cSharp, type: SkillType.hard, subType: Subtype.language);
  static Skill collaboration = Skill(name: (BuildContext context) => S.current.collaboration, type: SkillType.soft);
  static Skill communication = Skill(name: (BuildContext context) => S.current.communication, type: SkillType.soft);
//d
  static HardSkill dart = HardSkill(name: (BuildContext context) => S.current.dart, type: SkillType.hard, subType: Subtype.language);
  static HardSkill doctrine = HardSkill(name: (BuildContext context) => S.current.doctrine, type: SkillType.hard, subType: Subtype.tool);
//e
//f
  static HardSkill flutter = HardSkill(name: (BuildContext context) => S.current.flutter, type: SkillType.hard, subType: Subtype.language);
//g
  static HardSkill gherkin = HardSkill(name: (BuildContext context) => S.current.gherkin, type: SkillType.hard, subType: Subtype.language);
  static HardSkill github = HardSkill(name: (BuildContext context) => S.current.github, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill gitlab = HardSkill(name: (BuildContext context) => S.current.gitlab, type: SkillType.hard, subType: Subtype.tool);
//h
//i
  static HardSkill ionos = HardSkill(name: (BuildContext context) => S.current.ionos, type: SkillType.hard, subType: Subtype.tool);
  static Skill initiative = Skill(name: (BuildContext context) => S.current.initiative, type: SkillType.soft);
//j
  static HardSkill jira = HardSkill(name: (BuildContext context) => S.current.jira, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill jQuery = HardSkill(name: (BuildContext context) => S.current.jQuery, type: SkillType.hard, subType: Subtype.language);
//k
  static HardSkill kanban = HardSkill(name: (BuildContext context) => S.current.kanban, type: SkillType.hard, subType: Subtype.other);
  static Skill kind = Skill(name: (BuildContext context) => S.current.kind, type: SkillType.soft);
//l
  static HardSkill log4Net = HardSkill(name: (BuildContext context) => S.current.log4Net, type: SkillType.hard, subType: Subtype.tool);
  static Skill motivated = Skill(name: (BuildContext context) => S.current.motivated, type: SkillType.soft);
//m
  static HardSkill mvc = HardSkill(name: (BuildContext context) => S.current.mvc, type: SkillType.hard, subType: Subtype.other);
  static HardSkill mySql = HardSkill(name: (BuildContext context) => S.current.mySql, type: SkillType.hard, subType: Subtype.tool);
//n
  static HardSkill netCore = HardSkill(name: (BuildContext context) => S.current.netCore, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill netStandard = HardSkill(name: (BuildContext context) => S.current.netStandard, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill ntiers = HardSkill(name: (BuildContext context) => S.current.ntiers, type: SkillType.hard, subType: Subtype.other);
//o
  static HardSkill oracle = HardSkill(name: (BuildContext context) => S.current.oracle, type: SkillType.hard, subType: Subtype.tool);
//p
  static HardSkill php = HardSkill(name: (BuildContext context) => S.current.php, type: SkillType.hard, subType: Subtype.language);
  static HardSkill phpStorm = HardSkill(name: (BuildContext context) => S.current.phpStorm, type: SkillType.hard, subType: Subtype.tool);
  static Skill proactive = Skill(name: (BuildContext context) => S.current.proactive, type: SkillType.soft);
  static Skill proposeInitiatives = Skill(name: (BuildContext context) => S.current.proposeInitiatives, type: SkillType.soft);
  static Skill punctuality = Skill(name: (BuildContext context) => S.current.punctuality, type: SkillType.soft);
//q
//u
//r
  static HardSkill razor = HardSkill(name: (BuildContext context) => S.current.razor, type: SkillType.hard, subType: Subtype.language);
//s
  static HardSkill scrum = HardSkill(name: (BuildContext context) => S.current.scrum, type: SkillType.hard, subType: Subtype.other);
  static HardSkill selenium = HardSkill(name: (BuildContext context) => S.current.selenium, type: SkillType.hard, subType: Subtype.language);
  static HardSkill soapUI = HardSkill(name: (BuildContext context) => S.current.soapUI, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill sonarQube = HardSkill(name: (BuildContext context) => S.current.sonarQube, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill sourceTree = HardSkill(name: (BuildContext context) => S.current.sourceTree, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill sql = HardSkill(name: (BuildContext context) => S.current.sql, type: SkillType.hard, subType: Subtype.language);
  static HardSkill symfony = HardSkill(name: (BuildContext context) => S.current.symfony, type: SkillType.hard, subType: Subtype.tool);
//t
  static HardSkill teams = HardSkill(name: (BuildContext context) => S.current.teams, type: SkillType.hard, subType: Subtype.tool);
  static Skill teamwork = Skill(name: (BuildContext context) => S.current.teamwork, type: SkillType.soft);
  static Skill tenacious = Skill(name: (BuildContext context) => S.current.tenacious, type: SkillType.soft);
  static Skill timeManagement = Skill(name: (BuildContext context) => S.current.timeManagement, type: SkillType.soft);
  static HardSkill trello = HardSkill(name: (BuildContext context) => S.current.trello, type: SkillType.hard, subType: Subtype.tool);
  static HardSkill twig = HardSkill(name: (BuildContext context) => S.current.twig, type: SkillType.hard, subType: Subtype.language);
//u
//v
//w
//x
//y
  static HardSkill visualStudio = HardSkill(name: (BuildContext context) => S.current.visualStudio, type: SkillType.hard, subType: Subtype.tool);
//z
}

class Skill extends StatelessWidget{
  final String Function(BuildContext context) name;
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
        SkillType.hard => context.isDark ? box(background: myDarkGreen, border: myDarkGreen) : box(background: myLightGreen, border: myDarkGreen),
        SkillType.soft => context.isDark ? box(background: myDarkBlue, border: myDarkBlue) : box(background: myLightBlue, border: myDarkBlue),
        SkillType.mad => context.isDark ? box(background: myDarkPurple, border: myDarkPurple) : box(background: myLightPurple, border: myDarkPurple),
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(name(context), textAlign: TextAlign.center),
      ),
    );
  }
}

class HardSkill extends Skill {
  final Subtype subType;

  const HardSkill({super.key, required this.subType, required super.name, required super.type});
}

extension _SkillBox on Skill {
  BoxDecoration box({required Color background, required Color border}) {
    return BoxDecoration(
      color: background,
      borderRadius: const BorderRadius.all(
        Radius.circular(15.0),
      ),
      border: Border.all(
        color: border,
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
    );
  }
}

class SkillsTable extends StatefulWidget {
  final List<Skill> skills;
  final List<HardSkill> hardSkills = [];
  final List<Skill> softSkills = [];
  final List<Skill> madSkills = [];

  SkillsTable({super.key, required this.skills}) {
    for(Skill skill in skills) {
      switch(skill.type) {
        case SkillType.hard:
          if (skill is HardSkill) {
            hardSkills.add(skill);
          }
          break;
        case SkillType.soft:
          softSkills.add(skill);
          break;
        case SkillType.mad:
          madSkills.add(skill);
          break;
      }
    }
  }

  @override
  SkillsTableState createState() => SkillsTableState();
}

class SkillsTableState extends State<SkillsTable> {
  @override
  Widget build(BuildContext context) {
    if(context.mediaQuery.size.width > context.mediaQuery.size.height && (context.mediaQuery.size.width/3) > 280){
      return buildHorizontal();
    }
    else {
      return buildVertical();
    }
  }
}

extension _HorizontalTable on State<SkillsTable> {
  Widget buildHorizontal() {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          skillTable(type: SkillType.soft),
          const SizedBox(width: 10),
          skillTable(type: SkillType.hard),
          const SizedBox(width: 10),
          skillTable(type: SkillType.mad),
        ],
    );
  }
}

extension _VerticalTable on State<SkillsTable> {
  Widget buildVertical() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          skillTable(size: context.mediaQuery.size.width, type: SkillType.soft),
          const SizedBox(height: 10),
          skillTable(size: context.mediaQuery.size.width, type: SkillType.hard),
          const SizedBox(height: 10),
          skillTable(size: context.mediaQuery.size.width, type: SkillType.mad),
        ],
      ),
    );
  }
}

extension _SkillTable on State<SkillsTable> {
  Widget skillTable({double size = 0.30, required SkillType type}) {
    String skillTitle;
    Color? bgTitleColor;
    Color? bgColor;
    List<Widget> skillDisplay;

    if(type == SkillType.hard) {
      skillTitle = S.current.skillTitleHard;
      bgTitleColor = myDarkGreen;
      bgColor = myLightGreen;
      skillDisplay = sorting();
    }
    else if (type == SkillType.soft){
      skillTitle = S.current.skillTitleSoft;
      bgTitleColor = myDarkBlue;
      bgColor = myLightBlue;
      skillDisplay = widget.softSkills.map((skill) => skill.build(context)).toList();
    }
    else {
      skillTitle = S.current.skillTitleMad;
      bgTitleColor = myDarkPurple;
      bgColor = myLightPurple;
      skillDisplay = widget.madSkills.map((skill) => skill.build(context)).toList();
    }

    return Flexible(
      child: Column(
        children: [
          Container(
            width: context.mediaQuery.size.width * size,
            decoration: BoxDecoration(
              color: bgTitleColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: Text(skillTitle, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            width: context.mediaQuery.size.width * size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: bgColor.withOpacity(0.75),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: Center(
              child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  alignment: WrapAlignment.center,
                  children: skillDisplay,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension HardSkillDisplay on State<SkillsTable> {
  List<Widget> sorting() {
    List<HardSkill> tools = [];
    List<HardSkill> languages = [];
    List<HardSkill> others = [];

    for(HardSkill skill in widget.hardSkills) {
        switch(skill.subType) {
          case Subtype.tool : tools.add(skill);
          case Subtype.language : languages.add(skill);
          case Subtype.other : others.add(skill);
        }
    }

    return [
      Align(
        alignment: Alignment.topLeft,
        child: Text(S.current.skillTitleLanguage, style: const TextStyle(color: Colors.black),),
      ),
      Wrap(
        spacing: 5,
        runSpacing: 5,
        alignment: WrapAlignment.center,
        children: languages.map((skill) => skill.build(context)).toList()),
      const Divider(thickness: 1, color: myDarkGreen),
      Align(
        alignment: Alignment.topLeft,
        child: Text(S.current.skillTitleTool, style: const TextStyle(color: Colors.black),),
      ),
      Wrap(
          spacing: 5,
          runSpacing: 5,
          alignment: WrapAlignment.center,
          children: tools.map((skill) => skill.build(context)).toList()),
      const Divider(thickness: 1, color: myDarkGreen),
      Align(
        alignment: Alignment.topLeft,
        child: Text(S.current.skillTitleOther, style: const TextStyle(color: Colors.black),),
      ),
      Wrap(
          spacing: 5,
          runSpacing: 5,
          alignment: WrapAlignment.center,
          children: others.map((skill) => skill.build(context)).toList()),
    ];
  }
}