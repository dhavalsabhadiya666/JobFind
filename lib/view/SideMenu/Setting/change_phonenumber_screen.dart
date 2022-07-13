import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/enum_utils.dart';
import 'package:teleport/view/SideMenu/Setting/widgets/custom_setting_appbar.dart';
import 'package:teleport/view/createnewjob/Widgets/custom_formfield.dart';
import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import 'OTP_verification_setting_screen.dart';

class ChangePhoneNumberScreen extends StatefulWidget {
  const ChangePhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<ChangePhoneNumberScreen> createState() =>
      _ChangePhoneNumberScreenState();
}

class _ChangePhoneNumberScreenState extends State<ChangePhoneNumberScreen> {
  TextEditingController _oldPhNumberController = TextEditingController();
  TextEditingController _newPhNumberController = TextEditingController();

  String initialValue = '+1';

  @override
  Widget build(BuildContext context) {
    bool showFloat = MediaQuery.of(context).viewInsets.bottom != 0;
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: SizedBox(
              height: 12.w,
              width: 45.w,
              child: Visibility(
                visible: !showFloat,
                child: FloatingActionButton(
                    elevation: 0.0,
                    autofocus: false,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(1.w)),
                    onPressed: () {},
                    child: CustomButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    OTPVerificationSettingScreen()));
                      },
                      title: "OTP Verification",
                      width: 45.w,
                      textStyle: FontTextStyle.GorditaW5S10darkBlack,
                      backgroundColor: ColorUtils.primaryColor,
                      textColor: ColorUtils.black,
                    )),
              )),
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
                          VariableUtils.changePhoneNumber,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                        SizedBox(
                          height: 1.w,
                        ),
                        Text(
                          VariableUtils.changePhNumberDes,
                          style: FontTextStyle.GorditaW5S10lightBlack,
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                        Text(VariableUtils.oldPhNumber,
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
                              fieldController: _newPhNumberController,
                              fieldInputType: TextInputType.number,
                              height: 16.w,
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        Text(VariableUtils.newPhNumber,
                            style: FontTextStyle.GorditaW5S10darkBlack),
                        SizedBox(
                          height: 4.w,
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
                              fieldController: _newPhNumberController,
                              fieldInputType: TextInputType.number,
                              height: 16.w,
                            )),
                          ],
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
