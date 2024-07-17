import 'package:portfolio_elsa/all.dart';

class MyFAQs extends StatefulWidget {
  const MyFAQs({super.key});

  @override
  State<MyFAQs> createState() => _MyFAQsPageState();
}

class _MyFAQsPageState extends State<MyFAQs> {
  @override
  Widget build(BuildContext context) {
    return RouteAwareWidget(
      child: Scaffold(
        bottomNavigationBar: myFooter(context),
        appBar: myAppBar(context, S.current.faqTitle),

        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleText(text: S.current.faqTitle),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: HtmlText(text: S.current.faqDevArt),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: HtmlText(text: S.current.faqContact),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: HtmlText(text: S.current.faqGit),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
