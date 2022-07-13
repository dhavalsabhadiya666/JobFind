import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/SideMenu/Setting/widgets/custom_setting_appbar.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import '../../Auth/widget/custom_text_form_field.dart';

class OTPVerificationSettingScreen extends StatefulWidget {
  const OTPVerificationSettingScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationSettingScreen> createState() =>
      _OTPVerificationSettingScreenState();
}

class _OTPVerificationSettingScreenState
    extends State<OTPVerificationSettingScreen> {
  TextEditingController _otpVerificationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool showFloat = MediaQuery.of(context).viewInsets.bottom != 0;
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Visibility(
            visible: !showFloat,
            child: SizedBox(
                height: 25.w,
                //width: 30.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 12.w,
                      width: 30.w,
                      child: FloatingActionButton(
                        elevation: 0.0,
                        autofocus: false,
                        backgroundColor: ColorUtils.primaryColor,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(1.w)),
                        onPressed: () {},
                        child: CustomButton(
                          title: "Save",
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          width: 30.w,
                          textStyle: FontTextStyle.GorditaW5S10darkBlack,
                          backgroundColor: ColorUtils.primaryColor,
                          textColor: ColorUtils.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Text(
                      "Resend Code",
                      style: FontTextStyle.GorditaW5S10lightBlack.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                )),
          ),
          backgroundColor: ColorUtils.white,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(20.w),
              child: Column(
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )),
          body: Container(
            //color: ColorUtils.red,
            //height: 800,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.otpVerificationTitle,
                          style: FontTextStyle.GorditaW7S12darkBlack,
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
                            fieldName: VariableUtils.oldPhNumber,
                            fieldController: _otpVerificationController),
                        SizedBox(
                          height: 4.w,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
