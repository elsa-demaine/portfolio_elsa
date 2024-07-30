import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio_elsa/all.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<StatefulWidget> createState() { return _CarouselWithIndicatorState(); }
}

class _CarouselWithIndicatorState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  carouselItem(String imageAsset, String text, bool isRow, bool isLight) {
    return [
      isRow ?
        Image.asset(imageAsset) :
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image(
                image: AssetImage(imageAsset),
            ),
          ),
        ),

      Expanded(
        child: Container(
          margin: const EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
          color: const Color.fromARGB(75, 0, 0, 0),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Theme(
              data: ThemeData(
                scrollbarTheme: ScrollbarThemeData(
                  thumbVisibility: const WidgetStatePropertyAll(true),
                  thumbColor: WidgetStatePropertyAll(isLight ? myLightPurple : myDarkPurple),
                  trackVisibility: WidgetStatePropertyAll(isLight ? true : false),
                  radius: const Radius.circular(16),
                  thickness: const WidgetStatePropertyAll(7),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: HtmlText(text: text),
              ),
            ),
          ),
        ),
      ),
    ];
  }

  List<Widget> myCarouselList(BuildContext context) {
    return [
      FractionallySizedBox(
        widthFactor: 1,
        child: ColoredBox(
          color: const Color.fromARGB(255, 232, 197, 100),
          child: context.orientation ?
            Row(
              children: carouselItem(
                  'assets/images/hobbies/Okami.jpeg', S.current.okami, true, false)) :
            Column(
              children: carouselItem(
                  'assets/images/hobbies/Okami.jpeg',S.current.okami, false, false)),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 1,
        child: ColoredBox(
          color: const Color.fromARGB(255, 23, 48, 69),
          child: context.orientation ?
            Row(
              children: carouselItem(
                'assets/images/hobbies/Outer_Wilds.jpeg', S.current.outerWilds, true, true)) :
            Column(
              children: carouselItem(
                'assets/images/hobbies/Outer_Wilds.jpeg', S.current.outerWilds, false, true)),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 1,
        child: ColoredBox(
          color: const Color.fromARGB(255, 113, 158, 218),
          child: context.orientation ?
            Row(
              children: carouselItem(
                'assets/images/hobbies/MHW.jpeg', S.current.monsterHunter, true, false)) :
            Column(
              children: carouselItem(
                'assets/images/hobbies/MHW.jpeg', S.current.monsterHunter, false, false)),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: myCarouselList(context),
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: false,
            viewportFraction: 1,
            height: context.mediaQuery.size.height * .5,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
        ),
        // Dots for scrollbar
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: myCarouselList(context).asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (_current == entry.key ? context.colorScheme.onPrimary : context.colorScheme.primary),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}