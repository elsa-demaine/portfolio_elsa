import 'package:flutter/material.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/utils/all.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Elsa Demaine\'s Portfolio';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    ColorScheme t = Theme.of(context).colorScheme;
    S l = S.of(context);

    setPageTitle(l.home, context);

    return RouteAwareWidget(
      child: Scaffold(
        bottomNavigationBar: myFooter(context),
        appBar: myAppBar(context, widget.title),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 175, 0, 0),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.warning, color: Colors.orangeAccent),
                      ),
                      Flexible(
                        child: Text(l.warningAlpha,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ),
                      ),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Image.asset( t.brightness == Brightness.light ? 'assets/images/Logo_ED_Big.png' : 'assets/images/Logo_ED_Big_White.png', width: MediaQuery.of(context).size.width * .25,),
                    Column(
                      children: [
                        titleText(l.experiences),
                        htmlText(l.experiences),
                      ],
                    ),
                  ],
                ),

                titleText(l.experiences),
                skillsTable(context, [
                  Skill(name: l.skillASP, type: SkillType.hard),
                  Skill(name: l.skillJira, type: SkillType.soft),
                  Skill(name: l.skillTrello, type: SkillType.mad),
                ]),

                titleText(l.experiences),

                Divider(
                  thickness: 2,
                  color: t.onPrimary,
                ),
                ExpItem(
                  business: l.altecaTitre,
                  dates: l.altecaDates,
                  infos: l.altecaInfos,
                  imageName: 'assets/images/Alteca.png',
                  isPair: false,
                  skills: [
                    Skill(name: l.skillASP, type: SkillType.hard),
                    Skill(name: l.skillJira, type: SkillType.soft),
                    Skill(name: l.skillTrello, type: SkillType.mad),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: t.onPrimary,
                ),
                ExpItem(
                  business: l.soitecTitre,
                  dates: l.soitecDates,
                  infos: l.soitecInfos,
                  imageName: t.brightness == Brightness.light ?
                  'assets/images/Soitec2.png': 'assets/images/Soitec.png',
                  isPair: true,
                  skills: [
                    Skill(name: l.skillASP, type: SkillType.hard),
                    Skill(name: l.skillJira, type: SkillType.soft),
                    Skill(name: l.skillTrello, type: SkillType.mad),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: t.onPrimary,
                ),

                ExpansionTile(
                  title: Text(
                    l.experiencesExpand,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: Icon(
                    isExpanded ?
                    Icons.keyboard_arrow_up_rounded :
                    Icons.keyboard_arrow_down_rounded,
                    color: t.onPrimary,
                    size: 30,
                  ),
                  onExpansionChanged: (bool expanded) {
                    setState(() {
                      isExpanded = expanded;
                    });
                  },
                  children: [
                    Divider(
                      thickness: 2,
                      color: t.onPrimary,
                    ),
                    ExpItem(
                      business: l.altecaTitre,
                      dates: l.altecaDates,
                      infos: l.altecaInfos,
                      imageName: 'assets/images/Alteca.png',
                      isPair: true,
                      skills: [
                        Skill(name: l.skillASP, type: SkillType.hard),
                        Skill(name: l.skillJira, type: SkillType.soft),
                        Skill(name: l.skillTrello, type: SkillType.mad),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: t.onPrimary,
                    ),
                    ExpItem(
                      business: l.soitecTitre,
                      dates: l.soitecDates,
                      infos: l.soitecInfos,
                      imageName: t.brightness == Brightness.light ?
                        'assets/images/Soitec2.png': 'assets/images/Soitec.png',
                      isPair: false,
                      skills: [
                        Skill(name: l.skillASP, type: SkillType.hard),
                        Skill(name: l.skillJira, type: SkillType.soft),
                        Skill(name: l.skillTrello, type: SkillType.mad),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: t.onPrimary,
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),

                titleText(l.diplomas),
                Divider(
                  thickness: 2,
                  color: t.onPrimary,
                ),
                Column(
                  children: [
                    htmlText(l.diplomas),
                    htmlText(l.diplomas),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: t.onPrimary,
                ),

              ],
            ),
          );
        }),
      )
    );
  }
}
