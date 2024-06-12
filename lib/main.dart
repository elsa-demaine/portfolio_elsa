import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio_elsa/constants.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/hobbies.dart';
import 'package:portfolio_elsa/routing.dart';

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
    return RouteAwareWidget( child: Scaffold(
      bottomNavigationBar: myFooter(context),
      appBar: myAppBar(context, widget.title),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            // Width minus padding size so the text is not stuck on right side
            width: MediaQuery.of(context).size.width - 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                titleText(
                  S.of(context).experiences, null
                ),
              ],
            ),
          ),
        );
      }),
    )
    );
  }
}