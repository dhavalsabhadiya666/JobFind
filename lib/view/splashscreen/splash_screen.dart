import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/variable_utils.dart';

import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../onboarding/onboarding_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnboardingScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Scaffold(
          body: Container(
        child: Stack(
          children: [
            Image.asset(
              ImageUtils.splashScreenImage,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageUtils.locationIcon,
                    height: 7.w,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    VariableUtils.title,
                    style: FontTextStyle.gilroyW7S24darkBlack,
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
