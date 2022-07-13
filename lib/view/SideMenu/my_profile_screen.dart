import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/auth/widget/custom_text_form_field.dart';
import '../../utils/image_utils.dart';
import 'Setting/widgets/custom_setting_appbar.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
              child: GestureDetector(
            onTap: () {},
            child: Container(
                height: 18.w,
                color: ColorUtils.darkBlack,
                child: Center(
                  child: Text(
                    VariableUtils.save,
                    style: FontTextStyle.GorditaW5S10primarycolor.copyWith(
                        fontSize: 12.sp),
                  ),
                )),
          )),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(18.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    titleName: VariableUtils.myProfileTitle,
                  ),
                  Divider(),
                ],
              )),
          backgroundColor: ColorUtils.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.w,
                ),
                Center(
                    child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    CircleAvatar(
                      radius: 20.w,
                      backgroundImage: AssetImage(ImageUtils.profileTemImage),
                    ),
                    Positioned(
                        bottom: -4.w,
                        left: 4.w,
                        right: 4.w,
                        child: CircleAvatar(
                          backgroundColor: ColorUtils.white,
                          radius: 6.w,
                          child: CircleAvatar(
                            backgroundColor: ColorUtils.primaryColor,
                            radius: 5.6.w,
                            child: Center(
                              child: SvgPicture.asset(
                                ImageUtils.cameraIcon,
                                height: 6.w,
                              ),
                            ),
                          ),
                        ))
                  ],
                )),
                SizedBox(
                  height: 18.w,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormField(
                              fieldName: VariableUtils.firstName,
                              fieldController: _firstNameController,
                            )),
                            SizedBox(
                              width: 2.w,
                            ),
                            Expanded(
                                child: CustomTextFormField(
                              fieldName: VariableUtils.lastName,
                              fieldController: _lastNameController,
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 3.w,
                        ),
                        CustomTextFormField(
                          fieldName: VariableUtils.emailAddress,
                          fieldController: _emailController,
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
