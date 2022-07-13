import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';

import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../auth/widget/custom_text_form_field.dart';

class DriverPayTipScreen extends StatefulWidget {
  const DriverPayTipScreen({Key? key}) : super(key: key);

  @override
  State<DriverPayTipScreen> createState() => _DriverPayTipScreenState();
}

class _DriverPayTipScreenState extends State<DriverPayTipScreen> {
  String selectedoption = '';
  TextEditingController _cardnumber = new TextEditingController();
  TextEditingController _expdate = new TextEditingController();
  TextEditingController _security = new TextEditingController();
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    titleName: VariableUtils.payTip,
                    // otherIcon: ImageUtils.backIcon,
                  ),
                ],
              )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 4.w, bottom: 4.w),
                    decoration: BoxDecoration(color: ColorUtils.accent),
                    child: Center(
                      child: Text(
                        "Pay \$5 tips to Feni Olgano",
                        style: FontTextStyle.GorditaW5S10white,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5.w,
                      ),
                      Text(
                        VariableUtils.saveCard,
                        style: FontTextStyle.GorditaW7S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Container(
                        // height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(7),
                            color: ColorUtils.white),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                    left: 3.w, right: 3.w, bottom: 4.w),
                                height: 30.w,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    //color: Colors.yellow,
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            ImageUtils.cardBackgroundImage))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 3.w, bottom: 4.w),
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Icon(
                                                Icons.more_horiz,
                                                color: ColorUtils.white,
                                              ),
                                            ))
                                      ],
                                    ),
                                    Text("Deni Colidar",
                                        style: FontTextStyle.GorditaW7S10white),
                                    SizedBox(
                                      height: 1.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "****",
                                          style:
                                              FontTextStyle.GorditaW5S10white,
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Text(
                                          "****",
                                          style:
                                              FontTextStyle.GorditaW5S10white,
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Text(
                                          "****",
                                          style:
                                              FontTextStyle.GorditaW5S10white,
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Text(
                                          "2050",
                                          style:
                                              FontTextStyle.GorditaW5S10white,
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    color: ColorUtils.aliceBlue,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5.w),
                                        bottomRight: Radius.circular(5.w))),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 5.w,
                                      left: 3.w,
                                      right: 3.w,
                                      bottom: 5.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(
                                        ImageUtils.visaIcon,
                                        height: 4.w,
                                        color: ColorUtils.darkBlack,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "05/25",
                                            style: FontTextStyle
                                                .GorditaW7S10darkBlack,
                                          ),
                                          Text(
                                            VariableUtils.expDate,
                                            style: FontTextStyle
                                                .GorditaW7S10lightBlack,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            VariableUtils.creditDebit,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          Container(
                            width: 43.w,
                            // margin: EdgeInsets.only(right: 1.w, left: 1.w),
                            // color: ColorUtils.primaryColor,
                            child: ListTile(
                              leading: Transform.scale(
                                scale: 1.5,
                                child: Radio(
                                  activeColor: ColorUtils.primaryColor,
                                  value: VariableUtils.saveCard,
                                  groupValue: selectedoption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedoption = value!.toString();
                                    });
                                  },
                                ),
                              ),
                              title: Text(
                                VariableUtils.saveCard,
                                style: FontTextStyle.GorditaW5S10lightBlack,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7.w,
                      ),
                      CustomTextFormField(
                        fieldController: _cardnumber,
                        fieldName: VariableUtils.cardNumber,
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextFormField(
                              fieldController: _expdate,
                              fieldName: VariableUtils.expDate,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              fieldController: _security,
                              fieldName: VariableUtils.securityCode,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                      Center(
                        child: CustomButton(
                          // height: 12.w,
                          width: 30.w,
                          title: VariableUtils.pay,
                          textStyle: FontTextStyle.GorditaW5S10darkBlack,
                          backgroundColor: ColorUtils.primaryColor,
                          textColor: ColorUtils.darkBlack,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
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
