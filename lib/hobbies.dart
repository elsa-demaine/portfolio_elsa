import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
                    'Tertiary',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                ),
                Row (
                  children: [
                    const Text('data'),
                    /*CarouselSlider(
                      options: CarouselOptions(height: 400.0),
                      items: [1,2,3,4,5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: const BoxDecoration(
                                    color: Colors.amber
                                ),
                                child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
                            );
                          },
                        );
                      }).toList(),
                    ),*/
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
