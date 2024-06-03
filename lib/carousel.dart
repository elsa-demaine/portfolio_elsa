
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'constants.dart';
import 'generated/l10n.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<StatefulWidget> createState() { return _CarouselWithIndicatorState(); }
}

List<Widget> myCarouselList(BuildContext context) {
  return [
    FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Image.asset('images/LI-In-Bug.png'),
          Html(
            shrinkWrap: true,
            data: S.of(context).textBold,
            style: myHtmlStyle,
          ),
        ],
      ),
    ),
    FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Image.asset('images/LI-In-Bug.png'),
          Html(
            shrinkWrap: true,
            data: "Bye !",
            style: myHtmlStyle,
          ),
        ],
      ),
    ),
    FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Image.asset('images/LI-In-Bug.png'),
          Html(
            shrinkWrap: true,
            data: "Hello 3 !",
            style: myHtmlStyle,
          ),
        ],
      ),
    ),
  ];
}

class _CarouselWithIndicatorState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: myCarouselList(context),
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: false,
            viewportFraction: 1,
            //padEnds: false,
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
              width: 12.0,
              height: 12.0,
              margin:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).highlightColor)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}