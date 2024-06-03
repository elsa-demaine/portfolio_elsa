import 'package:flutter/material.dart';

import 'carousel.dart';
import 'constants.dart';

class MyHobbies extends StatefulWidget {
  const MyHobbies({super.key});

  final String title = 'My hobbies';

  @override
  State<MyHobbies> createState() => _MyHobbiesPageState();

}

class _MyHobbiesPageState extends State<MyHobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myFooter(context),
      appBar: myAppBar(context, widget.title),
      //Navigator.pop(context);
      body: LayoutBuilder(builder: (context, constraints) {
        return ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(15),
          children: const [
             Carousel(),
          ],
        );
      }),
    );
  }
}
