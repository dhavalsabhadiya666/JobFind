import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/sideMenu/payment_method_screen.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import '../../Dashboard/Message/message_list_screen.dart';
import '../../Dashboard/Myjob/get_detail_screen.dart';
import '../Setting/setting_screen.dart';
import '../driver_list_screen.dart';
import '../given_feedback_screen.dart';
import '../my_profile_screen.dart';
import '../notification_screen.dart';
import '../subscription_screen.dart';

class CustomDrawerScreen extends StatefulWidget {
  const CustomDrawerScreen({Key? key}) : super(key: key);

  @override
  State<CustomDrawerScreen> createState() => _CustomDrawerScreenState();
}

class _CustomDrawerScreenState extends State<CustomDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: ColorUtils.accentLigth,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.w,
                ),
                Container(
                    height: 20.w,
                    width: 20.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            ImageUtils.sofaTemImage,
                          )),
                      border: Border.all(color: ColorUtils.accent, width: 1.w),
                      borderRadius: BorderRadius.circular(5.w),
                    ),
                    child: Text("")),
                SizedBox(
                  height: 10.w,
                ),
                Text(
                  "Deni Colidar",
                  style: FontTextStyle.GorditaW7S14white,
                ),
                // SizedBox(
                //   height: 2.w,
                // ),
                Text(
                  "denicolidar789@gmail.com",
                  style: FontTextStyle.GorditaW5S10white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.w,
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.personWhiteIcon,
              height: 4.5.w,
              //color: ColorUtils.white,
            ),
            title: Text(VariableUtils.myProfileTitle,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyProfileScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.myJobIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.myJobsTitle,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GetDetailScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.driverListIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.driversListTitle,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DriverListScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.paymentMethodIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.paymentMethodTitle,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaymentMethodScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.notificationIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.notificationsTitle,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.messageIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.messagesTitle,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageListScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.subscriptionIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.subscriptionPlanTitle,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SubscriptionScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.settingIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.givenFeedback,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GivenFeedbackScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.settingIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.settingTitle,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              ImageUtils.logoutIcon,
              height: 4.5.w,
              color: ColorUtils.white,
            ),
            title: Text(VariableUtils.logout,
                style: FontTextStyle.GorditaW7S10white),
            onTap: () {
              showModalBottomSheet(
                  enableDrag: true,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return showModelBottom();
                  });
            },
          ),
        ],
      ),
    ));
  }

  Widget showModelBottom() {
    return Container(
      height: 100.w,
      color: ColorUtils.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.w),
                  child: Container(
                    padding: EdgeInsets.all(7.w),
                    decoration: BoxDecoration(
                      color: ColorUtils.primaryLight,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      ImageUtils.logoutBigIcon,
                      height: 14.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.w,
                ),
                Text(
                  VariableUtils.logout,
                  style: FontTextStyle.GorditaW7S16darkBlack,
                ),
                SizedBox(
                  height: 3.w,
                ),
                Text(
                  VariableUtils.loginDes,
                  style: FontTextStyle.GorditaW5S10lightBlack,
                ),
                Text(
                  VariableUtils.logoutDes1,
                  style: FontTextStyle.GorditaW5S10lightBlack,
                ),
                SizedBox(
                  height: 8.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                        title: VariableUtils.yesLogout,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GetDetailScreen()));
                        },
                        backgroundColor: ColorUtils.red,
                        textColor: ColorUtils.white,
                        // width: 40.w,
                        textStyle: FontTextStyle.GorditaW5S10primarycolor,
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.w,
                ),
                Text(
                  VariableUtils.cancel,
                  style: FontTextStyle.GorditaW5S10darkBlack.copyWith(
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 5.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
