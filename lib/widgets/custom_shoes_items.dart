import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ShoesCarouselWidget extends StatelessWidget {
  var shoespic;
  var shoesname;
  var shoestype;
  var shoesprice;
  ShoesCarouselWidget({
    required this.shoespic,
    required this.shoesname,
    required this.shoestype,
    required this.shoesprice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: Container(
          width: 317,
          color: const Color(0xfff6f6f6),
          child: Image.asset(
            shoespic,
            fit: BoxFit.fitWidth,
          ),
        )),
        const SizedBox(
          height: 30,
        ),
        Text(
          shoesname,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColor.textColor),
        ),
        const SizedBox(
          height: 13,
        ),
        Text(
          shoestype,
          style: const TextStyle(fontSize: 14, color: Color(0xff757575)),
        ),
        const SizedBox(
          height: 13,
        ),
        Text(
          shoesprice,
          style: const TextStyle(fontSize: 13, color: AppColor.textColor, fontWeight: FontWeight.w400),
        )
      ]),
    );
  }
}
