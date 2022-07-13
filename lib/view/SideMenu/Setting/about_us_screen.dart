import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/SideMenu/Setting/widgets/custom_setting_appbar.dart';

import '../../../utils/image_utils.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text(
                    VariableUtils.aboutUs,
                    style: FontTextStyle.GorditaW7S14darkBlack,
                  ),
                ),
                SizedBox(
                  height: 3.w,
                ),
                Divider(),
                SizedBox(
                  height: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        VariableUtils.aboutUsDes1,
                        style: FontTextStyle.GorditaW5S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.aboutUsPragrap1,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Image.asset(
                        ImageUtils.aboutUs1Image,
                        //scale: 3.5,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Text(
                        VariableUtils.aboutUsDes2,
                        style: FontTextStyle.GorditaW5S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.aboutUsPragrap2,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.aboutUsPragrap3,
                        style: FontTextStyle.GorditaW5S10lightBlack,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Image.asset(
                        ImageUtils.aboutUs2Image,
                        //scale: 3.5,
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Text(
                        VariableUtils.aboutUsDes3,
                        style: FontTextStyle.GorditaW5S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Text(
                        VariableUtils.aboutUsPragrap4,
                        style: FontTextStyle.GorditaW5S10lightBlack,
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
