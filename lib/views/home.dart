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
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Image.asset('images/Logo_ED_Big.png', width: MediaQuery.of(context).size.width * .25,),
                      Column(
                        children: [
                          titleText(S.of(context).experiences),
                          htmlText(S.of(context).experiences),
                        ],
                      ),
                    ],
                  ),

                  titleText(S.of(context).experiences),
                  skillsTable(context, [
                    Skill(name: S.of(context).skillASP, type: SkillType.hard),
                    Skill(name: S.of(context).skillJira, type: SkillType.soft),
                    Skill(name: S.of(context).skillTrello, type: SkillType.mad),
                  ]),

                  titleText(S.of(context).experiences),

                  Divider(
                    thickness: 2,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  ExpItem(
                    business: S.of(context).altecaTitre,
                    dates: S.of(context).altecaDates,
                    infos: S.of(context).altecaInfos,
                    imageName: 'images/Alteca.png',
                    isPair: false,
                    skills: [
                      Skill(name: S.of(context).skillASP, type: SkillType.hard),
                      Skill(name: S.of(context).skillJira, type: SkillType.soft),
                      Skill(name: S.of(context).skillTrello, type: SkillType.mad),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  ExpItem(
                    business: S.of(context).soitecTitre,
                    dates: S.of(context).soitecDates,
                    infos: S.of(context).soitecInfos,
                    imageName: Theme.of(context).brightness == Brightness.light ?
                    'images/Soitec2.png': 'images/Soitec.png',
                    isPair: true,
                    skills: [
                      Skill(name: S.of(context).skillASP, type: SkillType.hard),
                      Skill(name: S.of(context).skillJira, type: SkillType.soft),
                      Skill(name: S.of(context).skillTrello, type: SkillType.mad),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),

                  ExpansionTile(
                    title: Text(
                      S.of(context).experiencesExpand,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    trailing: Icon(
                      isExpanded ?
                      Icons.keyboard_arrow_up_rounded :
                      Icons.keyboard_arrow_down_rounded,
                      color: Theme.of(context).colorScheme.onPrimary,
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
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      ExpItem(
                        business: S.of(context).altecaTitre,
                        dates: S.of(context).altecaDates,
                        infos: S.of(context).altecaInfos,
                        imageName: 'images/Alteca.png',
                        isPair: true,
                        skills: [
                          Skill(name: S.of(context).skillASP, type: SkillType.hard),
                          Skill(name: S.of(context).skillJira, type: SkillType.soft),
                          Skill(name: S.of(context).skillTrello, type: SkillType.mad),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      ExpItem(
                        business: S.of(context).soitecTitre,
                        dates: S.of(context).soitecDates,
                        infos: S.of(context).soitecInfos,
                        imageName: Theme.of(context).brightness == Brightness.light ?
                          'images/Soitec2.png': 'images/Soitec.png',
                        isPair: false,
                        skills: [
                          Skill(name: S.of(context).skillASP, type: SkillType.hard),
                          Skill(name: S.of(context).skillJira, type: SkillType.soft),
                          Skill(name: S.of(context).skillTrello, type: SkillType.mad),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),

                  titleText(S.of(context).diplomas),
                  Divider(
                    thickness: 2,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  Column(
                    children: [
                      htmlText(S.of(context).diplomas),
                      htmlText(S.of(context).diplomas),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),

                ],
              ),
            );
          }),
        ));
  }
}
