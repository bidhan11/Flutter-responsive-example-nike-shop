import 'package:flutter/material.dart';
import 'package:nike_shop/utils/colors.dart';

class CustomShopButton extends StatelessWidget {
  var bttitle;
  var bgcolor;
  var textcolor;

  CustomShopButton({
    required this.bttitle,
    required this.bgcolor,
    required this.textcolor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: bgcolor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          onPressed: () {},
          child: Text(
            bttitle,
            style: TextStyle(color: textcolor, fontSize: 14.2, fontWeight: FontWeight.w600),
          )),
    );
  }
}
