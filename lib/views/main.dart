import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/utils/appBar.dart';
import 'package:portfolio_elsa/utils/custom.dart';
import 'package:portfolio_elsa/utils/footer.dart';
import 'package:portfolio_elsa/utils/routing.dart';
import 'package:portfolio_elsa/utils/theme.dart';
import 'package:portfolio_elsa/views/hobbies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Elsa Demaine',
      theme: myTheme(),
      home: const MyHomePage(),
      navigatorObservers: [routeObserver],
      routes: {
        '/home': (context) => const MyHomePage(),
        '/hobbies': (context) => const MyHobbies(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Elsa Demaine\'s Portfolio';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
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
                  Image.asset('images/Logo_ED_Grand.png', width: MediaQuery.of(context).size.width * .25,),
                  Column(
                    children: [
                      titleText(S.of(context).experiences),
                      normalText(S.of(context).experiences),
                    ],
                  ),
                ],
              ),

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
                  skills: [S.of(context).skillASP, S.of(context).skillJira, S.of(context).skillTrello]
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
                  skills: [S.of(context).skillASP, S.of(context).skillJira, S.of(context).skillTrello]
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

class ExpItem extends StatefulWidget {
  final String business;
  final String dates;
  final String infos;
  final String imageName;
  final bool isPair;
  final List<String> skills;

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
                  normalText(widget.business),
                  normalText(widget.dates),
                  normalText(widget.infos),
                  Row(children: widget.skills.map((skill) => normalText(skill)).toList()),
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
                  normalText(widget.business),
                  normalText(widget.dates),
                  //normalText(widget.infos),
                  normalText("<div style='text-align: right'>${widget.infos}<div//>"),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: widget.skills.map((skill) => normalText(skill)).toList()),
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
                  normalText(widget.business),
                  normalText(widget.dates),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              normalText(widget.infos),
              Row(children: widget.skills.map((skill) => normalText(skill)).toList()),
            ],
          ),
        ],
      );
    }
  }
}
