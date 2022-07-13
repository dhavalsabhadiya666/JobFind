import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/view/auth/login_screen.dart';
import 'package:teleport/view/auth/widget/custom_appbar.dart';
import 'package:teleport/view/auth/widget/custom_text_form_field.dart';

import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import '../widgets/custom_round_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController =
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
                      backOnTap: () {},
                      locationIcon: ImageUtils.locationIcon,
                      titleName: VariableUtils.title,
                    ),
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            VariableUtils.resetPassword,
                            style: FontTextStyle.GorditaW7S14darkBlack,
                          ),
                          SizedBox(
                            height: 2.w,
                          ),
                          Text(
                            VariableUtils.resetPasswordDes,
                            style: FontTextStyle.GorditaW5S10lightBlack,
                          ),
                          SizedBox(
                            height: 10.w,
                          ),
                          CustomTextFormField(
                              fieldName: VariableUtils.password,
                              fieldController: _passwordController),
                          SizedBox(
                            height: 4.w,
                          ),
                          CustomTextFormField(
                              fieldName: VariableUtils.confrimPassword,
                              fieldController: _confirmPasswordController),
                          SizedBox(
                            height: 10.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomRoundButton(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  },
                                  icon: ImageUtils.forwardIcon),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
