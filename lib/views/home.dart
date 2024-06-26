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
    setPageTitle(S.of(context).home, context);

    return RouteAwareWidget(
      child: Scaffold(
        bottomNavigationBar: myFooter(context),
        appBar: myAppBar(context, widget.title),
        body: LayoutBuilder(builder: (context, constraints) {

          ColorScheme t = Theme.of(context).colorScheme;
          S l = S.of(context);
          bool orientation = MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;

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
                    Image(
                      image: AssetImage(t.brightness == Brightness.light ?
                        'assets/images/Logo_ED_Big.png' : 'assets/images/Logo_ED_Big_White.png',
                      ),
                      width: MediaQuery.of(context).size.width * .25,
                    ),
                    Column(
                      children: [
                        TitleText(text: l.experiences),
                        HtmlText(text: l.experiences),
                      ],
                    ),
                  ],
                ),

                TitleText(text: l.experiences),
                skillsTable(context, [
                  Skill(name: l.skillASP, type: SkillType.hard),
                  Skill(name: l.skillJira, type: SkillType.soft),
                  Skill(name: l.skillTrello, type: SkillType.mad),
                ]),

                TitleText(text: l.experiences),
                Divider(
                  thickness: 2,
                  color: t.onPrimary,
                ),
                ExpItem(
                  business: l.elsaTitre,
                  dates: l.elsaDates,
                  infos: l.elsaInfos,
                  imageName: t.brightness == Brightness.light ? 'assets/images/Logo_ED_Big.png' : 'assets/images/Logo_ED_Big_White.png',
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
                  // Remove borders
                  shape: const Border(),
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

                TitleText(text: l.diplomas),
                Divider(
                  thickness: 2,
                  color: t.onPrimary,
                ),
                Row(
                  children: [
                    orientation ?
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Image(
                          image: const AssetImage('assets/images/EPSI.png'),
                          width: MediaQuery.of(context).size.width * .25,
                        ),
                      ) :
                      const SizedBox(),
                    Flexible(
                      child: DecoratedBox(
                        decoration:  orientation ? BoxDecoration(
                          border: Border(
                            left: BorderSide(
                                width: 2,
                                color: Theme.of(context).colorScheme.onPrimary
                            ),
                          ),
                        ) : const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(l.epsiTitre,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(l.epsiDate,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                              Text(l.epsiDevInfo),
                              Text(l.epsiDevOps),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: t.onPrimary),
                Row(
                  children: [
                    orientation ?
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Image(
                        image: const AssetImage('assets/images/CSRP.png'),
                        width: MediaQuery.of(context).size.width * .25,
                      ),
                    ) :
                    const SizedBox(),
                    Flexible(
                      child: DecoratedBox(
                        decoration:  orientation ? BoxDecoration(
                          border: Border(
                            left: BorderSide(
                                width: 2,
                                color: Theme.of(context).colorScheme.onPrimary
                            ),
                          ),
                        ) : const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(l.csrpTitre,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(l.csrpDate,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                              Text(l.csrpBacPro),
                            ],
                          ),
                        ),
                      ),
                    ),
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
