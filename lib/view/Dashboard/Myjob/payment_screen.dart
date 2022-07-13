import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';

import '../../AllowPermission/widget/custom_button.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../auth/widget/custom_text_form_field.dart';
import 'driver_rating_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                    titleName: VariableUtils.payment,
                    // otherIcon: ImageUtils.backIcon,
                  ),
                ],
              )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorUtils.primaryLight),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //color: Colors.red,
                        child: Text(
                          VariableUtils.notes,
                          style: FontTextStyle.GorditaW7S10darkBlack,
                        ),
                      ),
                      Container(
                          width: 76.w,
                          // color: Colors.blue,
                          child: RichText(
                            text: TextSpan(
                                text: VariableUtils.hireJobNote1,
                                style: FontTextStyle.GorditaW5S10darkBlack,
                                children: [
                                  TextSpan(
                                    text: VariableUtils.hireJobNote2,
                                    style: FontTextStyle.GorditaW5S10lightBlack,
                                  )
                                ]),
                          )),
                    ],
                  ),
                ),
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
                                              onTap: () {
                                                // showModalBottomSheet(
                                                //     enableDrag: true,
                                                //     isScrollControlled: true,
                                                //     backgroundColor:
                                                //     Colors.transparent,
                                                //     context: context,
                                                //     builder: (context) {
                                                //       return showModelBottom();
                                                //     });
                                              },
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
                          title: VariableUtils.payHire,
                          textStyle: FontTextStyle.GorditaW5S10darkBlack,
                          backgroundColor: ColorUtils.primaryColor,
                          textColor: ColorUtils.darkBlack,
                          onPressed: () {
                            showModalBottomSheet(
                                enableDrag: true,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return showModelBottomsuccess();
                                });
                          },
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

  Widget showModelBottomsuccess() {
    return Container(
      height: 100.w,
      color: ColorUtils.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    top: 4.w, left: 4.w, right: 4.w, bottom: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        // height: 20.w,
                        // width: 20.w,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorUtils.primaryLight),
                        child: SvgPicture.asset(
                          ImageUtils.deliveredIcon,
                          height: 15.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Center(
                        child: Text(
                      VariableUtils.successfullyDelivered,
                      style: FontTextStyle.GorditaW7S12darkBlack,
                    )),
                    SizedBox(
                      height: 2.w,
                    ),
                    Center(
                        child: Text(
                      VariableUtils.successfullyDeliveredDes1,
                      style: FontTextStyle.GorditaW5S12lightBlack,
                    )),
                    Center(
                        child: Text(
                      VariableUtils.successfullyDeliveredDes2,
                      style: FontTextStyle.GorditaW5S12lightBlack,
                    )),
                    SizedBox(
                      height: 5.w,
                    ),
                    CustomButton(
                      textStyle: FontTextStyle.GorditaW5S10primarycolor,
                      width: double.infinity,
                      title: VariableUtils.giveRatingToDriver,
                      backgroundColor: ColorUtils.darkBlack,
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverRatingScreen()));
                      },
                    ),
                    SizedBox(
                      height: 4.w,
                    ),
                    Center(
                      child: Text(
                        VariableUtils.backToMyJobs,
                        style: FontTextStyle.GorditaW5S12darkBlackunderline,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
