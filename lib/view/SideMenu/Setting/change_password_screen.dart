import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/SideMenu/Setting/widgets/custom_setting_appbar.dart';
import 'package:teleport/view/auth/widget/custom_text_form_field.dart';

import '../../../utils/image_utils.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController _oldPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool showFloat = MediaQuery.of(context).viewInsets.bottom != 0;
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            width: 30.w,
            child: Visibility(
              visible: !showFloat,
              child: FloatingActionButton(
                elevation: 0.0,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(1.w)),
                onPressed: () {},
                child: CustomButton(
                  textStyle: FontTextStyle.GorditaW7S12darkBlack,
                  title: "Save",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  width: 30.w,
                  backgroundColor: ColorUtils.primaryColor,
                  textColor: ColorUtils.black,
                ),
              ),
            ),
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
                          VariableUtils.changePassword,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                        SizedBox(
                          height: 1.w,
                        ),
                        Text(
                          VariableUtils.changePDes,
                          style: FontTextStyle.GorditaW5S10lightBlack,
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                        CustomTextFormField(
                            fieldName: VariableUtils.oldPassword,
                            fieldController: _oldPasswordController),
                        SizedBox(
                          height: 4.w,
                        ),
                        CustomTextFormField(
                            fieldName: VariableUtils.newPassword,
                            fieldController: _newPasswordController),
                        SizedBox(
                          height: 4.w,
                        ),
                        CustomTextFormField(
                            fieldName: VariableUtils.confrimPassword,
                            fieldController: _confirmPasswordController),
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
