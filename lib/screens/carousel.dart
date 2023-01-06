import 'package:flutter/material.dart';
import 'package:power_she_pre/components/slide.dart';
import 'package:flutter_carousel_intro/flutter_carousel_intro.dart';
import 'package:power_she_pre/constants.dart';

class Carousel extends StatelessWidget {
  static const String id = "carousel";
  const Carousel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 131, 180, 220),
                Color.fromARGB(255, 207, 118, 158),
              ],
            )
      ),
      child: FlutterCarouselIntro(
        pointsAbove: false,
        animatedRotateX: false,
        animatedRotateZ: false,
        scale: true,
        animatedOpacity: true,
        primaryBullet: 20,
        secondaryBullet: 12,
        primaryColor:kbase,
        secondaryColor: Colors.white70,
        dotsCurve: Curves.easeIn,
        slides: [
          Slide(
            imgPath: 'images/Main.webp', 
            text: 'Empower women physically, mentally and financially',), 
          Slide(
            imgPath: 'images/Education.webp',
            text: "Learn and explore with the tutorials available",
          ), 
          Slide(
            imgPath: 'images/Community.png',
            text: "Share feelings and grievances with other women and counsellor",
          ), 
          Slide(
            imgPath: 'images/Shop.png',
            text: "Buy and sell your products from home itself",
          ), 
          Slide(
            imgPath: 'images/Opportunities.jpg',
            text: "Search for the available opportunities and scholarships",
          ),
          Slide(
            imgPath: 'images/SafetyC.png',
            text: 'Feel safe with alerts and safe locations',
          ),
          ],
      ),
    );
  }
}


