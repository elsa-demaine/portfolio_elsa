import 'package:flutter/material.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/utils/all.dart';
import 'package:portfolio_elsa/views/carousel.dart';

class MyHobbies extends StatefulWidget {
  const MyHobbies({super.key});

  final String title = 'My hobbies';

  @override
  State<MyHobbies> createState() => _MyHobbiesPageState();
}

class _MyHobbiesPageState extends State<MyHobbies> {
  @override
  Widget build(BuildContext context) {
    return RouteAwareWidget(
      child: Scaffold(
        bottomNavigationBar: myFooter(context),
        appBar: myAppBar(context, widget.title),
        body: LayoutBuilder(builder: (context, constraints) {
          S l = S.of(context);

          return ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(15),
            children: [
              TitleText(text: l.experiences),
              HtmlText(text: l.hobbies),
              const Carousel(),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        TitleText(text: l.experiences),
                        HtmlText(text: l.hobbies),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: const [
                        Placeholder(
                          color: Colors.red,
                        ),
                        Placeholder(
                          color: Colors.blue,
                        ),
                        Placeholder(
                          color: Colors.yellow,
                        ),
                        Placeholder(
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
      )
    );
  }
}
