import 'package:portfolio_elsa/all.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Elsa Demaine\'s Portfolio';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isExpanded = false;
  static const String path = 'assets/images/exp/';

  @override
  Widget build(BuildContext context) {
    setPageTitle(S.current.home, context);

    return RouteAwareWidget(
      child: Scaffold(
        bottomNavigationBar: myFooter(context),
        appBar: myAppBar(context, widget.title),
        body: LayoutBuilder(builder: (context, constraints) {
          final Divider expDiv = Divider(thickness: 2, color: context.colorScheme.onPrimary);

          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: context.mediaQuery.size.width,
                  color: const Color.fromARGB(255, 175, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.warning, color: Colors.orangeAccent),
                      ),
                      Flexible(
                        child: Text(
                          S.current.warningAlpha,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                TitleText(text: S.current.intro),
                HtmlText(text: S.current.intro),

                mySpacer,

                //#region Experiences
                SkillsTable(skills: [
                  SkillRepo.agile,
                  SkillRepo.analysis,
                  SkillRepo.androidStudio,
                  SkillRepo.aspNet,
                  SkillRepo.attentionToDetail,
                  SkillRepo.autonomy,
                  SkillRepo.bilang,
                  SkillRepo.bigPicture,
                  SkillRepo.bootstrap,
                  SkillRepo.cSharp,
                  SkillRepo.collaboration,
                  SkillRepo.communication,
                  SkillRepo.dart,
                  SkillRepo.doctrine,
                  SkillRepo.flutter,
                  SkillRepo.gherkin,
                  SkillRepo.github,
                  SkillRepo.gitlab,
                  SkillRepo.ionos,
                  SkillRepo.initiative,
                  SkillRepo.jira,
                  SkillRepo.jQuery,
                  SkillRepo.kanban,
                  SkillRepo.kind,
                  SkillRepo.log4Net,
                  SkillRepo.mvc,
                  SkillRepo.mySql,
                  SkillRepo.netCore,
                  SkillRepo.netStandard,
                  SkillRepo.ntiers,
                  SkillRepo.oracle,
                  SkillRepo.php,
                  SkillRepo.phpStorm,
                  SkillRepo.proactive,
                  SkillRepo.proposeInitiatives,
                  SkillRepo.punctuality,
                  SkillRepo.razor,
                  SkillRepo.scrum,
                  SkillRepo.selenium,
                  SkillRepo.soapUI,
                  SkillRepo.sonarQube,
                  SkillRepo.sourceTree,
                  SkillRepo.sql,
                  SkillRepo.symfony,
                  SkillRepo.teams,
                  SkillRepo.teamwork,
                  SkillRepo.tenacious,
                  SkillRepo.timeManagement,
                  SkillRepo.trello,
                  SkillRepo.twig,
                  SkillRepo.visualStudio,
                ]),

                mySpacer,

                TitleText(text: S.current.experiences),
                expDiv,
                ExpItem(
                  business: S.current.elsaTitle,
                  dates: S.current.elsaDates,
                  infos: S.current.elsaInfos,
                  imageName: context.isDark
                      ? 'assets/images/Logo_ED_Big_White.png'
                      : 'assets/images/Logo_ED_Big.png',
                  isLeft: false,
                  skills: [SkillRepo.flutter, SkillRepo.dart, SkillRepo.androidStudio, SkillRepo.github, SkillRepo.ionos],
                ),
                expDiv,
                ExpItem(
                  business: S.current.altecaTitle,
                  dates: S.current.altecaDates,
                  infos: S.current.altecaInfos,
                  imageName: context.isDark
                      ? '${path}Alteca_blanc.png'
                      : '${path}Alteca_noir.png',
                  isLeft: true,
                  skills: [
                    SkillRepo.cSharp,
                    SkillRepo.aspNet,
                    SkillRepo.visualStudio,
                    SkillRepo.gitlab,
                    SkillRepo.gherkin,
                    SkillRepo.selenium,
                    SkillRepo.mvc,
                    SkillRepo.ntiers,
                    SkillRepo.sql,
                    SkillRepo.oracle,
                    SkillRepo.teams,
                    SkillRepo.agile,
                    SkillRepo.trello,
                    SkillRepo.jira,
                    SkillRepo.soapUI,
                    SkillRepo.log4Net,
                  ],
                ),
                expDiv,
                ExpItem(
                  business: S.current.soitecTitle,
                  dates: S.current.soitecDates,
                  infos: S.current.soitecInfos,
                  imageName: context.isDark
                      ? '${path}Soitec_blanc.png'
                      : '${path}Soitec_noir.png',
                  isLeft: false,
                  skills: [
                    SkillRepo.cSharp,
                    SkillRepo.netCore,
                    SkillRepo.trello,
                    SkillRepo.kanban,
                    SkillRepo.soapUI,
                    SkillRepo.log4Net,
                    SkillRepo.gitlab,
                    SkillRepo.sourceTree,
                    SkillRepo.sonarQube,
                  ],
                ),
                expDiv,

                ExpansionTile(
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          S.current.experiencesExpand,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_up_rounded
                            : Icons.keyboard_arrow_down_rounded,
                        size: 20,
                      ),
                    ],
                  ),
                  // Removing trailing Icon because it's in title
                  trailing: const SizedBox(),
                  iconColor: context.colorScheme.onSurface,
                  collapsedIconColor: context.colorScheme.onSurface,
                  onExpansionChanged: (bool expanded) {
                    setState(() {
                      isExpanded = expanded;
                    });
                  },
                  // Remove borders
                  shape: const Border(),
                  children: [
                    expDiv,
                    ExpItem(
                      business: S.current.econocomTitle,
                      dates: S.current.econocomDates,
                      infos: S.current.econocomInfos,
                      imageName: context.isDark
                          ? '${path}Econocom_blanc.png'
                          : '${path}Econocom_noir.png',
                      isLeft: true,
                      skills: [
                        SkillRepo.cSharp,
                        SkillRepo.razor,
                        SkillRepo.scrum,
                        SkillRepo.log4Net,
                        SkillRepo.netStandard,
                      ],
                    ),
                    expDiv,
                    ExpItem(
                      business: S.current.webfTitle,
                      dates: S.current.webfDates,
                      infos: S.current.webfInfos,
                      imageName: context.isDark
                          ? '${path}Webf_blanc.png'
                          : '${path}Webf_noir.png',
                      isLeft: false,
                      skills: [
                        SkillRepo.php,
                        SkillRepo.symfony,
                        SkillRepo.bootstrap,
                        SkillRepo.jQuery,
                        SkillRepo.twig,
                        SkillRepo.doctrine,
                        SkillRepo.mySql,
                        SkillRepo.phpStorm,
                        SkillRepo.gitlab
                      ],
                    ),
                    expDiv,
                    ExpItem(
                      business: S.current.gemTitle,
                      dates: S.current.gemDates,
                      infos: S.current.gemInfos,
                      imageName: context.isDark
                          ? '${path}GEM_blanc.png'
                          : '${path}GEM_noir.png',
                      isLeft: true,
                    ),
                    expDiv,
                    ExpItem(
                      business: S.current.alatTitle,
                      dates: S.current.alatDates,
                      infos: S.current.alatInfos,
                      imageName: '${path}Alat.png',
                      isLeft: false,
                    ),
                    expDiv,
                    ExpItem(
                      business: S.current.esrfTitle,
                      dates: S.current.esrfDates,
                      infos: S.current.esrfInfos,
                      imageName: '${path}ESRF.png',
                      isLeft: true,
                    ),
                    expDiv,
                    ExpItem(
                      business: S.current.rocheTitle,
                      dates: S.current.rocheDates,
                      infos: S.current.rocheInfos,
                      imageName: '${path}Roche.png',
                      isLeft: false,
                    ),
                    expDiv,
                    ExpItem(
                      business: S.current.mairieTitle,
                      dates: S.current.mairieDates,
                      infos: S.current.mairieInfos,
                      imageName: context.isDark
                          ? '${path}Fontaine_blanc.png'
                          : '${path}Fontaine_noir.png',
                      isLeft: true,
                    ),
                    expDiv,
                  ],
                ),
                //#endregion

                mySpacer,

                //#region Diplomas
                TitleText(text: S.current.diplomas),
                expDiv,
                ExpItem(
                  business: S.current.epsiTitle,
                  dates: S.current.epsiDate,
                  infos: '${S.current.epsiDevInfo}<br/>${S.current.epsiDevOps}',
                  imageName: context.isDark
                      ? '${path}EPSI_blanc.png'
                      : '${path}EPSI_noir.png',
                  isLeft: false,
                ),
                expDiv,
                ExpItem(
                  business: S.current.csrpTitle,
                  dates: S.current.csrpDate,
                  infos: S.current.csrpBacPro,
                  imageName: '${path}CSRP.png',
                  isLeft: false,
                ),
                expDiv,
                //#endregion
              ],
            ),
          );
        }),
      ),
    );
  }
}
