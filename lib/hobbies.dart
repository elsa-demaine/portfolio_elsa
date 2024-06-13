import 'package:flutter/material.dart';
import 'package:portfolio_elsa/carousel.dart';
import 'package:portfolio_elsa/constants.dart';
import 'package:portfolio_elsa/generated/l10n.dart';
import 'package:portfolio_elsa/routing.dart';

class MyHobbies extends StatefulWidget {
  const MyHobbies({super.key});

  final String title = 'My hobbies';

  @override
  State<MyHobbies> createState() => _MyHobbiesPageState();

}

class _MyHobbiesPageState extends State<MyHobbies> {
  @override
  Widget build(BuildContext context) {
    return RouteAwareWidget( child: Scaffold(
      bottomNavigationBar: myFooter(context),
      appBar: myAppBar(context, widget.title),
      body: LayoutBuilder(builder: (context, constraints) {
        return ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(15),
          children: [
            titleText(S.of(context).experiences, null),
            normalText(S.of(context).hobbies, null),
            const Carousel(),
          ],
        );
      }),
    )
    );
  }
}
