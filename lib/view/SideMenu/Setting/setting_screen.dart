import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/SideMenu/Setting/t&condition_setting_screen.dart';
import 'package:teleport/view/SideMenu/Setting/widgets/custom_setting_appbar.dart';
import 'package:teleport/view/SideMenu/Setting/widgets/custom_setting_list.dart';
import 'about_us_screen.dart';
import 'change_password_screen.dart';
import 'change_phonenumber_screen.dart';
import 'help_support_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(20.w),
              child: Column(
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    titleName: VariableUtils.settingTitle,
                    // otherIcon: ImageUtils.backIcon,
                  ),
                ],
              )),
          backgroundColor: ColorUtils.aliceBlue,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSettingList(
                  titleName: VariableUtils.changePassword,
                  forwordIcon: ImageUtils.forwardIcon,
                  forwordTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ChangePasswordScreen()));
                  },
                ),
                SizedBox(
                  height: 4.w,
                ),
                CustomSettingList(
                  titleName: VariableUtils.changePhoneNumber,
                  forwordIcon: ImageUtils.forwardIcon,
                  forwordTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ChangePhoneNumberScreen()));
                  },
                ),
                SizedBox(
                  height: 4.w,
                ),
                CustomSettingList(
                  titleName: VariableUtils.aboutUs,
                  forwordIcon: ImageUtils.forwardIcon,
                  forwordTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUsScreen()));
                  },
                ),
                SizedBox(
                  height: 4.w,
                ),
                CustomSettingList(
                  titleName: VariableUtils.helpSupport,
                  forwordIcon: ImageUtils.forwardIcon,
                  forwordTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HelpSupportScreen()));
                  },
                ),
                SizedBox(
                  height: 4.w,
                ),
                CustomSettingList(
                  titleName: VariableUtils.termsConditions,
                  forwordIcon: ImageUtils.forwardIcon,
                  forwordTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TermAndConditionSettingScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
