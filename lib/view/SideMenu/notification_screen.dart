import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import 'Setting/widgets/custom_setting_appbar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    titleName: VariableUtils.notificationsTitle,
                    otherIcon: ImageUtils.msgDeleteIcon,
                    otherTap: () {},
                  ),
                  Divider(),
                ],
              )),
          backgroundColor: ColorUtils.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            VariableUtils.getNeBid,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.6.w),
                            decoration: BoxDecoration(
                                color: ColorUtils.primaryLight,
                                borderRadius: BorderRadius.circular(6.w)),
                            child: Text(
                              VariableUtils.now,
                              style: FontTextStyle.GorditaW5S10darkBlack,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Text(
                        VariableUtils.notification1,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Row(
                        children: [
                          CustomButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            title: VariableUtils.seeBid,
                            textColor: ColorUtils.primaryColor,
                            backgroundColor: ColorUtils.darkBlack,
                            textStyle: FontTextStyle.GorditaW7S10darkBlack,
                            width: 25.w,
                            height: 5.h,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          CustomButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            title: VariableUtils.hireNow,
                            textColor: ColorUtils.black,
                            backgroundColor: ColorUtils.primaryColor,
                            textStyle: FontTextStyle.GorditaW7S10darkBlack,
                            width: 25.w,
                            height: 5.h,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.w,
                ),
                Divider(),
                SizedBox(
                  height: 4.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            VariableUtils.newMessage,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.6.w),
                            decoration: BoxDecoration(
                                color: ColorUtils.primaryLight,
                                borderRadius: BorderRadius.circular(6.w)),
                            child: Text(
                              VariableUtils.yesterday,
                              style: FontTextStyle.GorditaW5S10darkBlack,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Text(
                        VariableUtils.notification2,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      Text(
                        VariableUtils.notification3,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Row(
                        children: [
                          CustomButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            title: VariableUtils.replay,
                            textColor: ColorUtils.primaryColor,
                            backgroundColor: ColorUtils.darkBlack,
                            textStyle: FontTextStyle.GorditaW7S10darkBlack,
                            width: 25.w,
                            height: 5.h,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.w,
                ),
                Divider(),
                SizedBox(
                  height: 4.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            VariableUtils.deliveryConfirmation,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.6.w),
                            decoration: BoxDecoration(
                                color: ColorUtils.primaryLight,
                                borderRadius: BorderRadius.circular(6.w)),
                            child: Text(
                              VariableUtils.dateTime,
                              style: FontTextStyle.GorditaW5S10darkBlack,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Text(
                        VariableUtils.notification4,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Row(
                        children: [
                          Text(
                            VariableUtils.jobId,
                            style: FontTextStyle.GorditaW7S10lightBlack,
                          ),
                          Text(
                            " #1251253215",
                            style: FontTextStyle.GorditaW7S10lightBlack,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Row(
                        children: [
                          Text(
                            VariableUtils.jobName,
                            style: FontTextStyle.GorditaW7S10lightBlack,
                          ),
                          Text(
                            "  27 Dec, 02:30",
                            style: FontTextStyle.GorditaW7S10lightBlack,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Row(
                        children: [
                          Text(
                            VariableUtils.paymentMethod,
                            style: FontTextStyle.GorditaW7S10lightBlack,
                          ),
                          Text(
                            " Cash \$257",
                            style: FontTextStyle.GorditaW7S10lightBlack,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.w,
                ),
                Divider(),
                SizedBox(
                  height: 4.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            VariableUtils.pickupCode,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.6.w),
                            decoration: BoxDecoration(
                                color: ColorUtils.primaryLight,
                                borderRadius: BorderRadius.circular(6.w)),
                            child: Text(
                              VariableUtils.dateTime,
                              style: FontTextStyle.GorditaW5S10darkBlack,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Text(
                        VariableUtils.notification5,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            ImageUtils.qrCodeIcon,
                            height: 15.w,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            VariableUtils.OrQRCode,
                            style: FontTextStyle.GorditaW7S10lightBlack,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.w,
                ),
                Divider(),
                SizedBox(
                  height: 4.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            VariableUtils.cardCharged,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.6.w),
                            decoration: BoxDecoration(
                                color: ColorUtils.primaryLight,
                                borderRadius: BorderRadius.circular(6.w)),
                            child: Text(
                              VariableUtils.dateTime,
                              style: FontTextStyle.GorditaW5S10darkBlack,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Text(
                        VariableUtils.notification6,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.w,
                ),
                Divider(),
                SizedBox(
                  height: 4.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            VariableUtils.driverRejectedJob,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(1.6.w),
                            decoration: BoxDecoration(
                                color: ColorUtils.primaryLight,
                                borderRadius: BorderRadius.circular(6.w)),
                            child: Text(
                              VariableUtils.dateTime,
                              style: FontTextStyle.GorditaW5S10darkBlack,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Text(
                        VariableUtils.notification7,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
