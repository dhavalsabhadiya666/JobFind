import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/auth/signup_screen.dart';
import 'package:teleport/view/auth/forgot_password_screen.dart';
import 'package:teleport/view/auth/widget/custom_appbar.dart';
import 'package:teleport/view/auth/widget/custom_text_form_field.dart';

import '../../utils/color_utils.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import '../widgets/custom_bottom_navigation_screen.dart';
import '../widgets/custom_round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(20.w),
            child: Container(
              //   color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAppBar(
                    authName: VariableUtils.signup,
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    locationIcon: ImageUtils.locationIcon,
                    titleName: VariableUtils.title,
                    authOnTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
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
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      VariableUtils.login,
                      style: FontTextStyle.GorditaW7S14darkBlack,
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    Text(
                      VariableUtils.loginDes,
                      style: FontTextStyle.GorditaW5S10lightBlack,
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    CustomTextFormField(
                        fieldName: VariableUtils.emailAddress,
                        fieldController: _emailController),
                    SizedBox(
                      height: 4.w,
                    ),
                    CustomTextFormField(
                        fieldName: VariableUtils.password,
                        fieldController: _passwordController),
                    SizedBox(
                      height: 14.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ForgotPasswordScreen()));
                          },
                          child: Text(
                            VariableUtils.forgotPassword,
                            style: FontTextStyle.GorditaW5S12darkBlackunderline,
                          ),
                        ),
                        CustomRoundButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CustomBottomNavigationScreen()));
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
