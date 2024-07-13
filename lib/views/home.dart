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
          bool isDark = context.colorScheme.brightness == Brightness.light;
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

                //#region Experiences
                SkillsTable(skills: [
                  agile,
                  analysis,
                  androidStudio,
                  aspNet,
                  attentionToDetail,
                  autonomy,
                  bilang,
                  bigPicture,
                  bootstrap,
                  cSharp,
                  communication,
                  dart,
                  doctrine,
                  flutter,
                  gherkin,
                  github,
                  gitlab,
                  ionos,
                  initiative,
                  jira,
                  jQuery,
                  kanban,
                  log4Net,
                  mvc,
                  mySql,
                  netCore,
                  netStandard,
                  ntiers,
                  oracle,
                  php,
                  phpStorm,
                  punctuality,
                  razor,
                  scrum,
                  selenium,
                  soapUI,
                  sonarQube,
                  sourceTree,
                  sql,
                  symfony,
                  teams,
                  teamwork,
                  timeManagement,
                  trello,
                  twig,
                  visualStudio,
                ]),

                const SizedBox(height: 30),

                TitleText(text: S.current.experiences),
                expDiv,
                ExpItem(
                  business: S.current.elsaTitle,
                  dates: S.current.elsaDates,
                  infos: S.current.elsaInfos,
                  imageName: isDark
                      ? 'assets/images/Logo_ED_Big.png'
                      : 'assets/images/Logo_ED_Big_White.png',
                  isLeft: false,
                  skills: [flutter, dart, androidStudio, github, ionos],
                ),
                expDiv,
                ExpItem(
                  business: S.current.altecaTitle,
                  dates: S.current.altecaDates,
                  infos: S.current.altecaInfos,
                  imageName: isDark
                      ? '${path}Alteca_noir.png'
                      : '${path}Alteca_blanc.png',
                  isLeft: true,
                  skills: [
                    cSharp,
                    aspNet,
                    visualStudio,
                    gitlab,
                    gherkin,
                    selenium,
                    mvc,
                    ntiers,
                    sql,
                    oracle,
                    teams,
                    agile,
                    trello,
                    jira,
                    soapUI,
                    log4Net,
                  ],
                ),
                expDiv,
                ExpItem(
                  business: S.current.soitecTitle,
                  dates: S.current.soitecDates,
                  infos: S.current.soitecInfos,
                  imageName: isDark
                      ? '${path}Soitec_noir.png'
                      : '${path}Soitec_blanc.png',
                  isLeft: false,
                  skills: [
                    cSharp,
                    netCore,
                    trello,
                    kanban,
                    soapUI,
                    log4Net,
                    gitlab,
                    sourceTree,
                    sonarQube,
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
                      imageName: isDark
                          ? '${path}Econocom_noir.png'
                          : '${path}Econocom_blanc.png',
                      isLeft: true,
                      skills: [
                        cSharp,
                        razor,
                        scrum,
                        log4Net,
                        netStandard,
                      ],
                    ),
                    expDiv,
                    ExpItem(
                      business: S.current.webfTitle,
                      dates: S.current.webfDates,
                      infos: S.current.webfInfos,
                      imageName: isDark
                          ? '${path}Webf_noir.png'
                          : '${path}Webf_blanc.png',
                      isLeft: false,
                      skills: [
                        php,
                        symfony,
                        bootstrap,
                        jQuery,
                        twig,
                        doctrine,
                        mySql,
                        phpStorm,
                        gitlab
                      ],
                    ),
                    expDiv,
                    ExpItem(
                      business: S.current.gemTitle,
                      dates: S.current.gemDates,
                      infos: S.current.gemInfos,
                      imageName: isDark
                          ? '${path}GEM_noir.png'
                          : '${path}GEM_blanc.png',
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
                      imageName: isDark
                          ? '${path}Fontaine_noir.png'
                          : '${path}Fontaine_blanc.png',
                      isLeft: true,
                    ),
                    expDiv,
                  ],
                ),
                //#endregion

                const SizedBox(height: 30),

                //#region Diplomas
                TitleText(text: S.current.diplomas),
                expDiv,
                ExpItem(
                  business: S.current.epsiTitle,
                  dates: S.current.epsiDate,
                  infos: '${S.current.epsiDevInfo}<br/>${S.current.epsiDevOps}',
                  imageName: isDark
                      ? '${path}EPSI_noir.png'
                      : '${path}EPSI_blanc.png',
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
