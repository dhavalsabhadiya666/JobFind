import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/SideMenu/Setting/widgets/custom_setting_appbar.dart';
import 'package:teleport/view/createnewjob/Widgets/custom_formfield.dart';

import '../../../utils/image_utils.dart';

class HelpSupportScreen extends StatefulWidget {
  const HelpSupportScreen({Key? key}) : super(key: key);

  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  TextEditingController _searchController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
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
                          VariableUtils.helpSupport,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        CustomFormField(
                          fieldController: _searchController,
                          hint: VariableUtils.findByFAQs,
                          height: 16.w,
                          prefixIcon: SvgPicture.asset(ImageUtils.searchIcon),
                        )
                      ],
                    )),
                SizedBox(
                  height: 6.w,
                ),
                Divider(),
                SizedBox(
                  height: 6.w,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.helpSupportTitle1,
                          style: FontTextStyle.GorditaW4S10black,
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4.w,
                        ),
                        Text(
                          VariableUtils.helpSupportTitle2,
                          style: FontTextStyle.GorditaW4S10black,
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4.w,
                        ),
                        Text(
                          VariableUtils.helpSupportTitle3,
                          style: FontTextStyle.GorditaW4S10black,
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                      ],
                    )),
                Container(
                  // height: 200,
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(color: ColorUtils.aliceBlue),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        VariableUtils.helpSupportTitle4,
                        style: FontTextStyle.GorditaW7S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Divider(),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.helpSupportDes1,
                        style: FontTextStyle.GorditaW4S10lightBlack,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.w,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.helpSupportTitle5,
                          style: FontTextStyle.GorditaW4S10black,
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        Divider(),
                        SizedBox(
                          height: 4.w,
                        ),
                        Text(
                          VariableUtils.helpSupportTitle6,
                          style: FontTextStyle.GorditaW4S10black,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 4.w,
                ),
                Container(
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(color: ColorUtils.darkBlack),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        VariableUtils.contactTeleport,
                        style: FontTextStyle.GorditaW7S15white,
                      ),
                      SizedBox(
                        height: 7.w,
                      ),
                      Text(VariableUtils.yourName,
                          style: FontTextStyle.GorditaW5S10white),
                      SizedBox(
                        height: 2.w,
                      ),
                      CustomFormField(
                        fieldController: _nameController,
                        bgColor: ColorUtils.whiteLigth,
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(VariableUtils.yourEmailAddress,
                          style: FontTextStyle.GorditaW5S10white),
                      SizedBox(
                        height: 2.w,
                      ),
                      CustomFormField(
                        fieldController: _emailController,
                        bgColor: ColorUtils.whiteLigth,
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(VariableUtils.message,
                          style: FontTextStyle.GorditaW5S10white),
                      SizedBox(
                        height: 2.w,
                      ),
                      CustomFormField(
                        fieldController: _messageController,
                        bgColor: ColorUtils.whiteLigth,
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            title: "Send",
                            width: 35.w,
                            backgroundColor: ColorUtils.primaryColor,
                            textColor: ColorUtils.black,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
