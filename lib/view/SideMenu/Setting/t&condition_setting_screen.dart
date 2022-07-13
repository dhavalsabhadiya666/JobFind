import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/SideMenu/Setting/widgets/custom_setting_appbar.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';

class TermAndConditionSettingScreen extends StatefulWidget {
  const TermAndConditionSettingScreen({Key? key}) : super(key: key);

  @override
  State<TermAndConditionSettingScreen> createState() =>
      _TermAndConditionSettingScreenState();
}

class _TermAndConditionSettingScreenState
    extends State<TermAndConditionSettingScreen> {
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
                        "info@applebymoving.com",
                        style: FontTextStyle.GorditaW5S10accent,
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
