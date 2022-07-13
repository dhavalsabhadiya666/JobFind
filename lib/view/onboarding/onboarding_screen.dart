import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import '../AllowPermission/location_permission_screen.dart';
import '../widgets/custom_round_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorUtils.aliceBlue,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorUtils.white,
              floatingActionButton: FloatingActionButton(
                elevation: 0.0,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LocationPermissionScreen()));
                },
                child: CustomRoundButton(icon: ImageUtils.forwardIcon),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipPath(
                      clipper: DiagonalPathClipperTwo(),
                      child: Container(
                          height: 120.w,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorUtils.aliceBlue,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 5.w),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(VariableUtils.skip,
                                  style: FontTextStyle.GorditaW5S12darkBlack
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline)),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 8.w,
                    ),
                    Text(
                      VariableUtils.onbordingTitle,
                      style: FontTextStyle.GorditaW7S16darkBlack,
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Text(
                      VariableUtils.onbordingDes1,
                      style: FontTextStyle.GorditaW5S10lightBlack,
                    ),
                    Text(
                      VariableUtils.onbordingDes2,
                      style: FontTextStyle.GorditaW5S10lightBlack,
                    ),
                    Text(
                      VariableUtils.onbordingDes3,
                      style: FontTextStyle.GorditaW5S10lightBlack,
                    ),
                    SizedBox(
                      height: 20.w,
                    ),
                  ],
                ),
              )),
        ));
  }
}
