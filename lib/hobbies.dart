import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'assets/constants.dart' as constants;

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
      bottomNavigationBar: constants.Constants.myFooter(context),
      appBar: constants.Constants.myAppBar(context, widget.title),
              //Navigator.pop(context);
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
                Container(
                  width: 500,
                  color: Theme.of(context).colorScheme.primary,
                  child: Text(
                    'Primary',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(
                      'Secondary',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                  ),
                ),
                Container(
                  width: 500,
                  color: Theme.of(context).colorScheme.tertiary,
                  child: Text(
                    'Teircery',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
