import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/Auth/widget/custom_text_form_field.dart';
import 'package:teleport/view/Dashboard/Myjob/driver_pay_tip_screen.dart';

import '../../../utils/image_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';

import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../createnewjob/Widgets/custom_formfield.dart';

class DriverRatingScreen extends StatefulWidget {
  const DriverRatingScreen({Key? key}) : super(key: key);

  @override
  State<DriverRatingScreen> createState() => _DriverRatingScreenState();
}

class _DriverRatingScreenState extends State<DriverRatingScreen> {
  TextEditingController _review = new TextEditingController();
  List _listtip = [
    '\$2',
    '\$3',
    '\$5',
    '\$6',
    '\$10',
    '\$15',
    '\$10',
    '\$15',
    '\$20'
  ];
  int drivingbehaviorrating = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorUtils.white,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(18.w),
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
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 1.w,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.howWasYourExperience,
                              style: FontTextStyle.GorditaW7S12darkBlack,
                            ),
                            Row(
                              children: [
                                Text(
                                  VariableUtils.withText,
                                  style: FontTextStyle.GorditaW7S12darkBlack,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(ImageUtils.profileTemImage),
                                  radius: 4.w,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  'Feni Olgano?',
                                  style: FontTextStyle.GorditaW7S12darkBlack,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                      //driver behavior
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.driverBehavior,
                              style: FontTextStyle.GorditaW5S12darkBlack,
                            ),
                            Container(
                              height: 18.w,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (index == 0) {
                                            drivingbehaviorrating = 0;
                                          }
                                          if (index == 1) {
                                            drivingbehaviorrating = 0;
                                            drivingbehaviorrating = 1;
                                          }
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10.00),
                                        margin: EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                            color:
                                                drivingbehaviorrating == index
                                                    ? ColorUtils.darkBlack
                                                    : ColorUtils.grey,
                                            //select==index? ColorUtils.darkBlack:ColorUtils.grey,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: SvgPicture.asset(
                                          ImageUtils.starIcon,
                                          color: ColorUtils.primaryColor,
                                          height: 8.w,
                                          // color: select == index
                                          //     ? ColorUtils.primaryColor
                                          //     : ColorUtils.grey,
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      //driving
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.driving,
                              style: FontTextStyle.GorditaW5S12darkBlack,
                            ),
                            Container(
                              height: 18.w,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      padding: EdgeInsets.all(10.00),
                                      margin: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          color: ColorUtils.darkBlack,
                                          //select==index? ColorUtils.darkBlack:ColorUtils.grey,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: SvgPicture.asset(
                                        ImageUtils.starIcon,
                                        color: ColorUtils.primaryColor,
                                        height: 8.w,
                                        // color: select == index
                                        //     ? ColorUtils.primaryColor
                                        //     : ColorUtils.grey,
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      //item safty
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.itemSafty,
                              style: FontTextStyle.GorditaW5S12darkBlack,
                            ),
                            Container(
                              height: 18.w,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      padding: EdgeInsets.all(10.00),
                                      margin: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          color: ColorUtils.darkBlack,
                                          //select==index? ColorUtils.darkBlack:ColorUtils.grey,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: SvgPicture.asset(
                                        ImageUtils.starIcon,
                                        color: ColorUtils.primaryColor,
                                        height: 8.w,
                                        // color: select == index
                                        //     ? ColorUtils.primaryColor
                                        //     : ColorUtils.grey,
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      //pricing
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.pricing,
                              style: FontTextStyle.GorditaW5S12darkBlack,
                            ),
                            Container(
                              height: 18.w,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      padding: EdgeInsets.all(10.00),
                                      margin: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          color: ColorUtils.darkBlack,
                                          //select==index? ColorUtils.darkBlack:ColorUtils.grey,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: SvgPicture.asset(
                                        ImageUtils.starIcon,
                                        color: ColorUtils.primaryColor,
                                        height: 8.w,
                                        // color: select == index
                                        //     ? ColorUtils.primaryColor
                                        //     : ColorUtils.grey,
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      //share reviews
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 2.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.shareYourExperience,
                          style: FontTextStyle.GorditaW5S10darkBlack,
                        ),
                        CustomFormField(
                          height: 25.w,
                          fieldController: _review,
                          hint: VariableUtils.typeHere,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.w,
                ),
                Divider(),
                SizedBox(
                  height: 2.w,
                ),
                //add tip for driver
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.addATipForFeni,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                        Container(
                          height: 18.w,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: _listtip.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    width: 15.w,
                                    padding: EdgeInsets.all(10.00),
                                    margin: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: ColorUtils.darkBlack,
                                        //select==index? ColorUtils.darkBlack:ColorUtils.grey,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                      child: Text(
                                        _listtip[index],
                                        style: FontTextStyle
                                                .GorditaW5S12darkBlack
                                            .copyWith(
                                                color: ColorUtils.primaryColor),
                                      ),
                                    ));
                              }),
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        CustomFormField(
                          //height: 25.w,
                          fieldController: _review,
                          hint: VariableUtils.typeCustomTipAmount,
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        Center(
                          child: CustomButton(
                            width: 30.w,
                            height: 13.w,
                            title: VariableUtils.done,
                            backgroundColor: ColorUtils.primaryColor,
                            textColor: ColorUtils.darkBlack,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DriverPayTipScreen()));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                      ],
                    ),
                  ),
                ),
                //Custome tip amounth
              ],
            ),
          ),
        ),
      ),
    );
  }
}
