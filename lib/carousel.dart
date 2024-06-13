import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_elsa/constants.dart';
import 'package:portfolio_elsa/generated/l10n.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<StatefulWidget> createState() { return _CarouselWithIndicatorState(); }
}

class _CarouselWithIndicatorState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  carouselItem(String imageAsset, String text, bool isRow) {
    return [
      isRow ? Image.asset(imageAsset) :
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(top: 15),
            alignment: Alignment.center,
            child: Image.asset(imageAsset)),
      ),
      Expanded(
        child: Container(
          margin: const EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
          color: const Color.fromARGB(100, 0, 0, 0),
          child: normalText(text, null),
        )),
    ];
  }

  List<Widget> myCarouselList(BuildContext context) {
    return [
      Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 232, 197, 100),
          child: isOrientationWidth(context)
                  ? Row(
                      children: carouselItem(
                          'images/Okami.jpeg', S.of(context).okami, true))
                  : Column(
                      children: carouselItem(
                          'images/Okami.jpeg', S.of(context).okami, false))
              ),
      Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 23, 48, 69),
          child: isOrientationWidth(context)
                  ? Row(
                      children: carouselItem(
                          'images/Outer_Wilds.jpeg', S.of(context).outerWilds, true))
                  : Column(
                      children: carouselItem(
                          'images/Outer_Wilds.jpeg', S.of(context).outerWilds, false))
          ),
      Container(
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 113, 158, 218),
        child: isOrientationWidth(context)
                ? Row(
                    children: carouselItem(
                        'images/MHW.jpeg', S.of(context).monsterHunter, true))
                : Column(
                    children: carouselItem(
                        'images/MHW.jpeg', S.of(context).monsterHunter, false))
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
                      color: (Theme.of(context).highlightColor)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ]);
  }
}