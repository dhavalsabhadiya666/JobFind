import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/view/auth/login_screen.dart';
import 'package:teleport/view/auth/otp_verification_screen.dart';
import 'package:teleport/view/auth/widget/custom_appbar.dart';
import 'package:teleport/view/auth/widget/custom_social_signup_button.dart';

import '../../utils/enum_utils.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/variable_utils.dart';
import '../createnewjob/Widgets/custom_formfield.dart';
import '../widgets/custom_round_button.dart';
import 'widget/custom_text_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _firstNameController = new TextEditingController();
  TextEditingController _lastNameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _phoneNumberController = new TextEditingController();
  String initialValue = '+1';
  @override
  Widget build(BuildContext context) {
    //bool showFloat = MediaQuery.of(context).viewInsets.bottom != 0;
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
            // floatingActionButton: Visibility(
            //   visible: !showFloat,
            //   child: FloatingActionButton(
            //       elevation: 0.0,
            //       onPressed: () {},
            //       child: ),
            // ),
            // floatingActionButtonLocation:
            //     FloatingActionButtonLocation.centerFloat,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(20.w),
              child: Container(
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      authName: VariableUtils.login,
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
                                builder: (context) => LoginScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ),
            backgroundColor: ColorUtils.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.w, horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.signupTitle,
                          style: FontTextStyle.GorditaW7S14darkBlack,
                        ),
                        SizedBox(
                          height: 2.w,
                        ),
                        Text(
                          VariableUtils.signupDes,
                          style: FontTextStyle.GorditaW5S10lightBlack,
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormField(
                              fieldController: _firstNameController,
                              fieldName: VariableUtils.firstName,
                            )),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                                child: CustomTextFormField(
                              fieldController: _lastNameController,
                              fieldName: VariableUtils.lastName,
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        CustomTextFormField(
                            fieldName: VariableUtils.emailAddress,
                            fieldController: _emailController),
                        SizedBox(
                          height: 4.w,
                        ),
                        Text(VariableUtils.phoneNumber,
                            style: FontTextStyle.GorditaW5S10darkBlack),
                        SizedBox(
                          height: 2.w,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Container(
                                height: 16.w,
                                width: 31.w,

                                padding: EdgeInsets.all(4.w),
                                decoration: BoxDecoration(
                                  color: ColorUtils.aliceBlue,
                                  borderRadius: BorderRadius.circular(4.5),
                                ),
                                //margin: EdgeInsets.symmetric(horizontal: 20),
                                child: DropdownButton(
                                  // isExpanded: true,
                                  iconEnabledColor: ColorUtils.grey,
                                  style: TextStyle(
                                      color: ColorUtils.grey, fontSize: 16),
                                  dropdownColor: ColorUtils.aliceBlue,
                                  focusColor: ColorUtils.grey,
                                  elevation: 0,
                                  underline: SizedBox(),
                                  value: initialValue,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  items: country.map((String items) {
                                    return DropdownMenuItem(
                                      child: Text(items),
                                      value: items != null ? items : "",
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      initialValue = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Expanded(
                                child: CustomFormField(
                              fieldController: _phoneNumberController,
                              fieldInputType: TextInputType.number,
                              height: 16.w,
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 7.w,
                        ),
                        Center(
                          child: SvgPicture.asset(
                            ImageUtils.orIcon,
                            height: 10.w,
                          ),
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        Center(
                          child: Text(
                            VariableUtils.signupWithSocial,
                            style: FontTextStyle.GorditaW5S12lightBlack,
                          ),
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        Row(
                          children: [
                            CustomSocialSignupButton(
                              title: VariableUtils.faceBook,
                              width: 30.w,
                              height: 12.w,
                              //backgroundColor: ColorUtils.blue,
                              textColor: ColorUtils.white,
                              color: ColorUtils.blue,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            CustomSocialSignupButton(
                              title: VariableUtils.google,
                              width: 30.w,
                              height: 12.w,
                              //backgroundColor: ColorUtils.blue,
                              textColor: ColorUtils.white,
                              color: ColorUtils.red,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            CustomSocialSignupButton(
                              title: VariableUtils.apple,
                              width: 30.w,
                              height: 12.w,
                              //backgroundColor: ColorUtils.blue,
                              textColor: ColorUtils.white,
                              color: ColorUtils.grey,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                      ],
                    ),
                  ),
                  CustomRoundButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OTPVerificationScreen()));
                    },
                    icon: ImageUtils.forwardIcon,
                  ),
                  SizedBox(
                    height: 8.w,
                  ),

                  /// add green forword button
                ],
              ),
            )),
      ),
    );
  }
}
