import 'package:flutter/material.dart';

class CarouselItems extends StatelessWidget {
  var imagename;
  var itemname;
  var bgcolor;
  CarouselItems({
    required this.imagename,
    required this.itemname,
    this.bgcolor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 397,
        width: 400,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: Container(
              color: bgcolor,
              child: Image.asset(
                imagename,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              itemname,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Shop",
              style:
                  TextStyle(fontSize: 15, letterSpacing: 1, decoration: TextDecoration.underline),
            ),
          )
        ]),
      ),
    );
  }
}
