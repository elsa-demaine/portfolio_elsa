import 'package:portfolio_elsa/all.dart';

//a
final agile = HardSkill(name: S.current.agile, type: SkillType.hard, subType: Subtype.other);
final analysis = Skill(name: S.current.analysis, type: SkillType.soft);
final androidStudio = HardSkill(name: S.current.androidStudio, type: SkillType.hard, subType: Subtype.tool);
final aspNet = HardSkill(name: S.current.aspNet, type: SkillType.hard, subType: Subtype.tool);
final attentionToDetail = Skill(name: S.current.attentionToDetail, type: SkillType.soft);
final autonomy = Skill(name: S.current.autonomy, type: SkillType.soft);
//b
final bilang = HardSkill(name: S.current.bilang, type: SkillType.hard, subType: Subtype.language);
final bigPicture = Skill(name: S.current.bigPicture, type: SkillType.soft);
final bootstrap = HardSkill(name: S.current.bootstrap, type: SkillType.hard, subType: Subtype.language,);
//c
final cSharp = HardSkill(name: S.current.cSharp, type: SkillType.hard, subType: Subtype.language);
final collaboration = Skill(name: S.current.collaboration, type: SkillType.soft);
final communication = Skill(name: S.current.communication, type: SkillType.soft);
//d
final dart = HardSkill(name: S.current.dart, type: SkillType.hard, subType: Subtype.language);
final doctrine = HardSkill(name: S.current.doctrine, type: SkillType.hard, subType: Subtype.tool);
//e
//f
final flutter = HardSkill(name: S.current.flutter, type: SkillType.hard, subType: Subtype.language);
//g
final gherkin = HardSkill(name: S.current.gherkin, type: SkillType.hard, subType: Subtype.language);
final github = HardSkill(name: S.current.github, type: SkillType.hard, subType: Subtype.tool);
final gitlab = HardSkill(name: S.current.gitlab, type: SkillType.hard, subType: Subtype.tool);
//h
//i
final ionos = HardSkill(name: S.current.ionos, type: SkillType.hard, subType: Subtype.tool);
final initiative = Skill(name: S.current.initiative, type: SkillType.soft);
//j
final jira = HardSkill(name: S.current.jira, type: SkillType.hard, subType: Subtype.tool);
final jQuery = HardSkill(name: S.current.jQuery, type: SkillType.hard, subType: Subtype.language);
//k
final kanban = HardSkill(name: S.current.kanban, type: SkillType.hard, subType: Subtype.other);
final kind = Skill(name: S.current.kind, type: SkillType.soft);
//l
final log4Net = HardSkill(name: S.current.log4Net, type: SkillType.hard, subType: Subtype.tool);
final motivated = Skill(name: S.current.motivated, type: SkillType.soft);
//m
final mvc = HardSkill(name: S.current.mvc, type: SkillType.hard, subType: Subtype.other);
final mySql = HardSkill(name: S.current.mySql, type: SkillType.hard, subType: Subtype.tool);
//n
final netCore = HardSkill(name: S.current.netCore, type: SkillType.hard, subType: Subtype.tool);
final netStandard = HardSkill(name: S.current.netStandard, type: SkillType.hard, subType: Subtype.tool);
final ntiers = HardSkill(name: S.current.ntiers, type: SkillType.hard, subType: Subtype.other);
//o
final oracle = HardSkill(name: S.current.oracle, type: SkillType.hard, subType: Subtype.tool);
//p
final php = HardSkill(name: S.current.php, type: SkillType.hard, subType: Subtype.language);
final phpStorm = HardSkill(name: S.current.phpStorm, type: SkillType.hard, subType: Subtype.tool);
final proactive = Skill(name: S.current.proactive, type: SkillType.soft);
final proposeInitiatives = Skill(name: S.current.proposeInitiatives, type: SkillType.soft);
final punctuality = Skill(name: S.current.punctuality, type: SkillType.soft);
//q
//u
//r
final razor = HardSkill(name: S.current.razor, type: SkillType.hard, subType: Subtype.language);
//s
final scrum = HardSkill(name: S.current.scrum, type: SkillType.hard, subType: Subtype.other);
final selenium = HardSkill(name: S.current.selenium, type: SkillType.hard, subType: Subtype.language);
final soapUI = HardSkill(name: S.current.soapUI, type: SkillType.hard, subType: Subtype.tool);
final sonarQube = HardSkill(name: S.current.sonarQube, type: SkillType.hard, subType: Subtype.tool);
final sourceTree = HardSkill(name: S.current.sourceTree, type: SkillType.hard, subType: Subtype.tool);
final sql = HardSkill(name: S.current.sql, type: SkillType.hard, subType: Subtype.language);
final symfony = HardSkill(name: S.current.symfony, type: SkillType.hard, subType: Subtype.tool);
//t
final teams = HardSkill(name: S.current.teams, type: SkillType.hard, subType: Subtype.tool);
final teamwork = Skill(name: S.current.teamwork, type: SkillType.soft);
final tenacious = Skill(name: S.current.tenacious, type: SkillType.soft);
final timeManagement = Skill(name: S.current.timeManagement, type: SkillType.soft);
final trello = HardSkill(name: S.current.trello, type: SkillType.hard, subType: Subtype.tool);
final twig = HardSkill(name: S.current.twig, type: SkillType.hard, subType: Subtype.language);
//u
//v
//w
//x
//y
final visualStudio = HardSkill(name: S.current.visualStudio, type: SkillType.hard, subType: Subtype.tool);
//z

enum SkillType { hard, soft, mad }
enum Subtype { language, tool, other}

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
        SkillType.hard => context.isDark ? box(background: myDarkGreen, border: myDarkGreen) : box(background: myLightGreen, border: myDarkGreen),
        SkillType.soft => context.isDark ? box(background: myDarkBlue, border: myDarkBlue) : box(background: myLightBlue, border: myDarkBlue),
        SkillType.mad => context.isDark ? box(background: myDarkPurple, border: myDarkPurple) : box(background: myLightPurple, border: myDarkPurple),
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(name, textAlign: TextAlign.center),
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
        child: Text(S.current.skillTitleTool),
      ),
      Wrap(
          spacing: 5,
          runSpacing: 5,
          alignment: WrapAlignment.center,
          children: tools.map((skill) => skill.build(context)).toList()),
      const Divider(thickness: 1, color: myDarkGreen),
      Align(
        alignment: Alignment.topLeft,
        child: Text(S.current.skillTitleOther),
      ),
      Wrap(
          spacing: 5,
          runSpacing: 5,
          alignment: WrapAlignment.center,
          children: others.map((skill) => skill.build(context)).toList()),
    ];
  }
}