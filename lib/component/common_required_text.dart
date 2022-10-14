import 'package:flutter/material.dart';
import 'package:infyhms_flutter/constant/color_const.dart';
import 'package:infyhms_flutter/constant/text_style_const.dart';

class CommonRequiredText extends StatelessWidget {
  CommonRequiredText({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);

  final double width;
  String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyleConst.mediumTextStyle(
          ColorConst.blackColor,
          width * 0.045,
        ),
        children: [
          TextSpan(
            text: "*",
            style: TextStyleConst.mediumTextStyle(
              ColorConst.redColor,
              width * 0.045,
            ),
          ),
        ],
      ),
    );
  }
}
