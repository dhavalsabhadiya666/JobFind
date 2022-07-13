import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/auth/login_screen.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/variable_utils.dart';

class CameraPermissionScreen extends StatefulWidget {
  const CameraPermissionScreen({Key? key}) : super(key: key);

  @override
  State<CameraPermissionScreen> createState() => _CameraPermissionScreenState();
}

class _CameraPermissionScreenState extends State<CameraPermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
              // color: ColorUtils.red,
              width: double.infinity,
              height: 40.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CustomButton(
                      backgroundColor: ColorUtils.darkBlack,
                      width: double.infinity,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      title: VariableUtils.allowCamera,
                      textStyle: FontTextStyle.GorditaW7S10darkBlack,
                    ),
                  ),
                  SizedBox(
                    height: 3.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(VariableUtils.maybeLater,
                        style: FontTextStyle.GorditaW5S12darkBlack.copyWith(
                            decoration: TextDecoration.underline)),
                  ),
                ],
              )),
          backgroundColor: ColorUtils.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: LinearPercentIndicator(
                          width: 50.w,
                          lineHeight: 1.w,
                          percent: 100 / 100,
                          barRadius: Radius.circular(50),
                          backgroundColor: ColorUtils.aliceBlue,
                          linearStrokeCap: LinearStrokeCap.round,
                          progressColor: ColorUtils.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80.w,
                  ),
                  Text(
                    VariableUtils.allowPermissionTitle,
                    style: FontTextStyle.GorditaW7S16darkBlack,
                  ),
                  Text(
                    VariableUtils.cameraPermission1,
                    style: FontTextStyle.GorditaW7S16darkBlack,
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  Text(
                    VariableUtils.cameraPermission2,
                    style: FontTextStyle.GorditaW5S10lightBlack,
                  ),
                  Text(
                    VariableUtils.cameraPermission3,
                    style: FontTextStyle.GorditaW5S10lightBlack,
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
