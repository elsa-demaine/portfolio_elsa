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
  static const String path = 'assets/images/exp/';

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
          bool isDark = t.brightness == Brightness.light;
          final Divider expDiv = Divider(thickness: 2, color: t.onPrimary);

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
                      image: AssetImage(isDark ? 'assets/images/Logo_ED_Big.png' : 'assets/images/Logo_ED_Big_White.png',
                      ),
                      width: MediaQuery.of(context).size.width * .25,
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          TitleText(text: l.intro),
                          HtmlText(text: l.intro),
                        ],
                      ),
                    ),
                  ],
                ),

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

                TitleText(text: l.experiences),
                expDiv,
                ExpItem(
                  business: l.elsaTitre,
                  dates: l.elsaDates,
                  infos: l.elsaInfos,
                  imageName: isDark ? 'assets/images/Logo_ED_Big.png' : 'assets/images/Logo_ED_Big_White.png',
                  isPair: false,
                  skills: [
                    flutter,
                    dart,
                    androidStudio,
                    github,
                    ionos
                  ],
                ),
                expDiv,
                ExpItem(
                  business: l.altecaTitre,
                  dates: l.altecaDates,
                  infos: l.altecaInfos,
                  imageName: isDark ? '${path}Alteca_noir.png': '${path}Alteca_blanc.png',
                  isPair: true,
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
                  business: l.soitecTitre,
                  dates: l.soitecDates,
                  infos: l.soitecInfos,
                  imageName: isDark ? '${path}Soitec_noir.png': '${path}Soitec_blanc.png',
                  isPair: false,
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
                    expDiv,
                    ExpItem(
                      business: l.econocomTitre,
                      dates: l.econocomDates,
                      infos: l.econocomInfos,
                      imageName: isDark ? '${path}Econocom_noir.png' : '${path}Econocom_blanc.png',
                      isPair: false,
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
                      business: l.webfTitre,
                      dates: l.webfDates,
                      infos: l.webfInfos,
                      imageName: isDark ? '${path}Webf_noir.png' : '${path}Webf_blanc.png',
                      isPair: true,
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
                      business: l.gemTitre,
                      dates: l.gemDates,
                      infos: l.gemInfos,
                      imageName: isDark ? '${path}GEM_noir.png' : '${path}GEM_blanc.png',
                      isPair: false,
                      skills: [
                      ],
                    ),
                    expDiv,
                    ExpItem(
                      business: l.alatTitre,
                      dates: l.alatDates,
                      infos: l.alatInfos,
                      imageName: '${path}Alat.png',
                      isPair: true,
                      skills: [
                      ],
                    ),
                    expDiv,
                    ExpItem(
                      business: l.esrfTitre,
                      dates: l.esrfDates,
                      infos: l.esrfInfos,
                      imageName: '${path}ESRF.png',
                      isPair: false,
                      skills: [
                      ],
                    ),
                    expDiv,
                    ExpItem(
                      business: l.rocheTitre,
                      dates: l.rocheDates,
                      infos: l.rocheInfos,
                      imageName: '${path}Roche.png',
                      isPair: true,
                      skills: [
                      ],
                    ),
                    expDiv,
                    ExpItem(
                      business: l.mairieTitre,
                      dates: l.mairieDates,
                      infos: l.mairieInfos,
                      imageName: isDark ? '${path}Fontaine_noir.png' : '${path}Fontaine_blanc.png',
                      isPair: false,
                      skills: [
                      ],
                    ),
                    expDiv,
                    const SizedBox(height: 10,),
                  ],
                ),
                //#endregion

                //#region Diplomas
                TitleText(text: l.diplomas),
                expDiv,
                Row(
                  children: [
                    orientation ?
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: AspectRatio(
                          aspectRatio: 3.5,
                          child: Image(
                              image: AssetImage(isDark ? '${path}EPSI_noir.png' : '${path}EPSI_blanc.png',),
                            ),
                        ),
                      ) : const SizedBox(),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DecoratedBox(
                          decoration: orientation ?
                            BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    width: 2,
                                    color: Theme.of(context).colorScheme.onPrimary
                                ),
                              ),
                            ) :
                            const BoxDecoration(),
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
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                Text(l.epsiDevInfo),
                                Text(l.epsiDevOps),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                expDiv,
                Row(
                  children: [
                    orientation ?
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: const AspectRatio(
                        aspectRatio: 3.5,
                        child: Image(
                          image: AssetImage('${path}CSRP.png'),
                        ),
                      ),
                    ) : const SizedBox(),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DecoratedBox(
                          decoration:  orientation ?
                            BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  width: 2,
                                  color: Theme.of(context).colorScheme.onPrimary
                                ),
                              ),
                            ) :
                            const BoxDecoration(),
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
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                Text(l.csrpBacPro),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                expDiv,
                //#endregion

              ],
            ),
          );
        }),
      )
    );
  }
}
