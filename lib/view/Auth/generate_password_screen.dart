import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/auth/signup_screen.dart';
import 'package:teleport/view/auth/widget/custom_appbar.dart';
import 'package:teleport/view/auth/widget/custom_text_form_field.dart';
import 'package:teleport/view/auth/widget/custom_social_signup_button.dart';

import '../../utils/color_utils.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import 'forgot_password_screen.dart';

class GeneratePasswordScreen extends StatefulWidget {
  const GeneratePasswordScreen({Key? key}) : super(key: key);

  @override
  State<GeneratePasswordScreen> createState() => _GeneratePasswordScreenState();
}

class _GeneratePasswordScreenState extends State<GeneratePasswordScreen> {
  TextEditingController _controllerPassword = new TextEditingController();
  TextEditingController _controllerConfrimPassword =
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
                )),
            backgroundColor: ColorUtils.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.generatePassword,
                          style: FontTextStyle.GorditaW7S14darkBlack,
                        ),
                        SizedBox(
                          height: 2.w,
                        ),
                        Text(
                          VariableUtils.generatePasswordDes,
                          style: FontTextStyle.GorditaW5S10lightBlack,
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                        CustomTextFormField(
                          fieldName: VariableUtils.password,
                          fieldController: _controllerPassword,
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        CustomTextFormField(
                          fieldName: VariableUtils.confrimPassword,
                          fieldController: _controllerConfrimPassword,
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                        CustomButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()));
                          },
                          title: VariableUtils.signup,
                          textColor: ColorUtils.darkBlack,
                          backgroundColor: ColorUtils.primaryColor,
                          width: 30.w,
                          height: 12.w,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
