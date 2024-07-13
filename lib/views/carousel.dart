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
    S l = S.of(context);
    bool orientation = MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;

    return [
      FractionallySizedBox(
        widthFactor: 1,
        child: ColoredBox(
          color: const Color.fromARGB(255, 232, 197, 100),
          child: orientation ?
            Row(
              children: carouselItem(
                  'assets/images/hobbies/Okami.jpeg', l.okami, true, false)) :
            Column(
              children: carouselItem(
                  'assets/images/hobbies/Okami.jpeg',l.okami, false, false)),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 1,
        child: ColoredBox(
          color: const Color.fromARGB(255, 23, 48, 69),
          child: orientation ?
            Row(
              children: carouselItem(
                'assets/images/hobbies/Outer_Wilds.jpeg', l.outerWilds, true, true)) :
            Column(
              children: carouselItem(
                'assets/images/hobbies/Outer_Wilds.jpeg', l.outerWilds, false, true)),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 1,
        child: ColoredBox(
          color: const Color.fromARGB(255, 113, 158, 218),
          child: orientation ?
            Row(
              children: carouselItem(
                'assets/images/hobbies/MHW.jpeg', l.monsterHunter, true, false)) :
            Column(
              children: carouselItem(
                'assets/images/hobbies/MHW.jpeg',l.monsterHunter, false, false)),
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
            height: MediaQuery.of(context).size.height * .5,
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
                  color: (_current == entry.key ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.primary),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}