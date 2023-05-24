import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NoticesCarousel extends StatelessWidget {
  const NoticesCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: const [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Shop All New Arrivals"),
              Text(
                "Shop Now",
                style:
                    TextStyle(decoration: TextDecoration.underline, fontSize: 12),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Why Wait? Try Store Pick Up."),
              Text(
                "Shop Now",
                style:
                    TextStyle(decoration: TextDecoration.underline, fontSize: 12),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(child: Text("Limited Time: Earn \$75 with new Apple Card")),
              Text(
                "Learn More. Terms Apply",
                style:
                    TextStyle(decoration: TextDecoration.underline, fontSize: 12),
              )
            ],
          ),
          Text(
            "As of 5/25, Free Member Shipping available Orders \$50 or above.",
            textAlign: TextAlign.center,
          ),
        ],
        options: CarouselOptions(
            enlargeCenterPage: true,
            height: 100,
            disableCenter: false,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 1)));
  }
}