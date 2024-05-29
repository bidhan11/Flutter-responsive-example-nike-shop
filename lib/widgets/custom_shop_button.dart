import 'package:flutter/material.dart';

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
    return Container(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: bgcolor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              bttitle,
              style: TextStyle(color: textcolor, fontSize: 14.2, fontWeight: FontWeight.w600),
            ),
          )),
    );
  }
}
