import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';

class CustomSocialSignupButton extends StatefulWidget {
  String title;
  Function()? onPressed;
  TextStyle? textStyle;
  Color? backgroundColor;
  Color? textColor;
  final double height;
  final double width;
  Color? color;

  CustomSocialSignupButton(
      {Key? key,
      required this.title,
      this.onPressed,
      this.textColor,
      this.backgroundColor,
      this.textStyle,
      this.color,
      this.height = kToolbarHeight,
      this.width = kToolbarHeight})
      : super(key: key);

  @override
  _CustomSocialSignupButtonState createState() =>
      _CustomSocialSignupButtonState();
}

class _CustomSocialSignupButtonState extends State<CustomSocialSignupButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0), color: widget.color),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
            //shadowColor: Colors.transparent,
            primary: widget.backgroundColor,

            //maximumSize: Size(double.infinity, 38),
            minimumSize: Size(double.infinity, 40),
            textStyle: widget.textStyle,
            //?? FontTextStyle.GorditaW5S12lightBlack,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
        child: Text(
          widget.title,
          style: TextStyle(
              color: widget.textColor,
              // fontFamily: CustomTextstyleTheme.fontFamily,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
