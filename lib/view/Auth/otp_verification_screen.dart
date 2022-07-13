import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/auth/generate_password_screen.dart';
import 'package:teleport/view/auth/widget/custom_appbar.dart';
import 'package:teleport/view/auth/widget/custom_text_form_field.dart';

import '../../utils/color_utils.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import '../widgets/custom_round_button.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  TextEditingController _otpVerificationController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(20.w),
            child: Container(
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    locationIcon: ImageUtils.locationIcon,
                    titleName: VariableUtils.title,
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: ColorUtils.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.w, horizontal: 3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      VariableUtils.otpVerificationTitle,
                      style: FontTextStyle.GorditaW7S14darkBlack,
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    Text(
                      VariableUtils.otpVerificationDes,
                      style: FontTextStyle.GorditaW5S10lightBlack,
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    CustomTextFormField(
                        fieldName: VariableUtils.otpVerification,
                        fieldController: _otpVerificationController),
                    SizedBox(
                      height: 20.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: Text(
                              VariableUtils.resendCode,
                              style:
                                  FontTextStyle.GorditaW5S12darkBlackunderline,
                            )),
                        CustomRoundButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        GeneratePasswordScreen()));
                          },
                          icon: ImageUtils.forwardIcon,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
