import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/AllowPermission/notification_permission_screen.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';

import '../../utils/font_style_utils.dart';

class LocationPermissionScreen extends StatefulWidget {
  const LocationPermissionScreen({Key? key}) : super(key: key);

  @override
  State<LocationPermissionScreen> createState() =>
      _LocationPermissionScreenState();
}

class _LocationPermissionScreenState extends State<LocationPermissionScreen> {
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
                                builder: (context) =>
                                    NotificationPermissionScreen()));
                      },
                      title: VariableUtils.allowLocationServices,
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
                          percent: 33.33 / 100,
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
                    VariableUtils.locationPermission1,
                    style: FontTextStyle.GorditaW7S16darkBlack,
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  Text(
                    VariableUtils.locationPermission2,
                    style: FontTextStyle.GorditaW5S10lightBlack,
                  ),
                  SizedBox(
                    height: 15.w,
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
