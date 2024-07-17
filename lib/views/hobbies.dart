import 'package:portfolio_elsa/all.dart';
import 'package:portfolio_elsa/views/carousel.dart';

class MyHobbies extends StatefulWidget {
  const MyHobbies({super.key});

  @override
  State<MyHobbies> createState() => _MyHobbiesPageState();
}

class _MyHobbiesPageState extends State<MyHobbies> {
  @override
  Widget build(BuildContext context) {
    return RouteAwareWidget(
      child: Scaffold(
        bottomNavigationBar: myFooter(context),
        appBar: myAppBar(context, S.current.hobbies),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TitleText(text: S.current.videoGames),
                HtmlText(text: S.current.vgText),
                const Carousel(),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          TitleText(text: S.current.series),
                          HtmlText(text: S.current.seriesText),
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
            ),
          );
        }),
      ),
    );
  }
}
