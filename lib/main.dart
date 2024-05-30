import 'package:flutter/material.dart';
import 'assets/constants.dart' as constants;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elsa Demaine',
      theme: constants.Constants.myTheme(),
      home: const MyHomePage(title: 'Elsa Demaine\'s Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: constants.Constants.myFooter(context),
      appBar: constants.Constants.myAppBar(context, widget.title),
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
                const Text(
                  'You have pushed the button this many times: '
                  'You have pushed the button this many times: '
                  'You have pushed the button this many times:'
                  'You have pushed the button this many times:',
                ),
                Text(
                  '3',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
