import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import '../../utils/font_style_utils.dart';
import '../Dashboard/Myjob/get_detail_screen.dart';
import '../SideMenu/Setting/widgets/custom_setting_appbar.dart';

class CreateJobTermConditionScreen extends StatefulWidget {
  const CreateJobTermConditionScreen({Key? key}) : super(key: key);

  @override
  State<CreateJobTermConditionScreen> createState() =>
      _CreateJobTermConditionScreenState();
}

class _CreateJobTermConditionScreenState
    extends State<CreateJobTermConditionScreen> {
  int selected = 0;
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
                      titleName: VariableUtils.createJob,
                      backOnTap: () {
                        Navigator.pop(context);
                      }),
                  Divider(),
                ],
              )),
          backgroundColor: ColorUtils.white,
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
                        VariableUtils.termsConditions,
                        style: FontTextStyle.GorditaW7S14darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.termCondicationDes,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(
                        VariableUtils.termConditionTitle1,
                        style: FontTextStyle.GorditaW5S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(2.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // color: Colors.red,
                              child: Text(
                                "1. ",
                                style: FontTextStyle.GorditaW5S10lightBlack,
                              ),
                            ),
                            Container(
                              width: 76.w,
                              // color: Colors.blue,
                              child: Text(
                                VariableUtils.termCondicationDes2,
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: FontTextStyle.GorditaW5S10lightBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.w,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(2.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // color: Colors.red,
                              child: Text(
                                "2. ",
                                style: FontTextStyle.GorditaW5S10lightBlack,
                              ),
                            ),
                            Container(
                              width: 76.w,
                              // color: Colors.blue,
                              child: Text(
                                VariableUtils.termCondicationDes3,
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: FontTextStyle.GorditaW5S10lightBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      Text(
                        VariableUtils.termConditionTitle2,
                        style: FontTextStyle.GorditaW5S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.termCondicationDes4,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      //applicable
                      Text(
                        VariableUtils.termConditionTitle3,
                        style: FontTextStyle.GorditaW5S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.termCondicationDes5,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      //google anlaylics
                      Text(
                        VariableUtils.termConditionTitle4,
                        style: FontTextStyle.GorditaW5S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.termCondicationDes6,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.termCondicationDes7,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      Text(
                        VariableUtils.infoMail,
                        style: FontTextStyle.GorditaW5S10accent,
                      ),
                      SizedBox(
                        height: 10.w,
                      ),

                      // SizedBox(
                      //   height: 20.w,
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4.w),
                  // height: 40.w,
                  decoration: BoxDecoration(color: ColorUtils.primaryLight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // customRadio(
                      //     VariableUtils.youWantDriverToContactYouOnCall, 1),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(2.w),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selected == 0
                                          ? ColorUtils.grey
                                          : ColorUtils.primaryColor),
                                  shape: BoxShape.circle,
                                  color: selected == 0
                                      ? ColorUtils.primaryLight
                                      : ColorUtils.primaryColor),
                              child: SvgPicture.asset(
                                ImageUtils.checkIcon,
                                height: 3.w,
                                color: selected == 0
                                    ? Colors.transparent
                                    : ColorUtils.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: 75.w,
                            //color: Colors.red,
                            child: Text(
                              VariableUtils.youWantDriverToContactYouOnCall,
                              softWrap: true,
                              maxLines: 2,
                              style: FontTextStyle.GorditaW5S10lightBlack,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 1;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(2.w),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selected == 1
                                          ? ColorUtils.grey
                                          : ColorUtils.primaryColor),
                                  shape: BoxShape.circle,
                                  color: selected == 1
                                      ? ColorUtils.primaryLight
                                      : ColorUtils.primaryColor),
                              child: SvgPicture.asset(
                                ImageUtils.checkIcon,
                                height: 3.w,
                                color: selected == 1
                                    ? Colors.transparent
                                    : ColorUtils.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: 75.w,
                            //color: Colors.red,
                            child: Text(
                              VariableUtils.acceptAboveTermsConditions,
                              softWrap: true,
                              maxLines: 2,
                              style: FontTextStyle.GorditaW5S10lightBlack,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            title: VariableUtils.postJob,
                            onPressed: () {
                              showModalBottomSheet(
                                  enableDrag: true,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return showModelBottom();
                                  });
                            },
                            backgroundColor: ColorUtils.primaryColor,
                            textColor: ColorUtils.black,
                            textStyle: FontTextStyle.GorditaW5S10primarycolor,
                            width: 30.w,
                          )
                        ],
                      )
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

  Widget customRadio(String text, int index) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });
          },
          child: Container(
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(
                border: Border.all(
                    color: selected == index
                        ? ColorUtils.grey
                        : ColorUtils.primaryColor),
                shape: BoxShape.circle,
                color: selected == index
                    ? ColorUtils.primaryLight
                    : ColorUtils.primaryColor),
            child: SvgPicture.asset(
              ImageUtils.checkIcon,
              height: 3.w,
              color: selected == index ? Colors.transparent : ColorUtils.black,
            ),
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          width: 75.w,
          //color: Colors.red,
          child: Text(
            text,
            softWrap: true,
            maxLines: 2,
            style: FontTextStyle.GorditaW5S10lightBlack,
          ),
        ),
      ],
    );
  }

  Widget showModelBottom() {
    return Container(
      height: 120.w,
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
                      ImageUtils.successfullyIcon,
                      height: 18.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.w,
                ),
                Text(
                  VariableUtils.successfullyPosted,
                  style: FontTextStyle.GorditaW7S16darkBlack,
                ),
                SizedBox(
                  height: 4.w,
                ),
                Text(
                  VariableUtils.successfullyPostedDes,
                  style: FontTextStyle.GorditaW5S10lightBlack,
                ),
                Text(
                  VariableUtils.successfullyPostedDes1,
                  style: FontTextStyle.GorditaW5S10lightBlack,
                ),
                SizedBox(
                  height: 8.w,
                ),
                CustomButton(
                  title: VariableUtils.backToMyJobs,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GetDetailScreen()));
                  },
                  backgroundColor: ColorUtils.black,
                  textColor: ColorUtils.primaryColor,
                  width: 40.w,
                  textStyle: FontTextStyle.GorditaW5S10primarycolor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
