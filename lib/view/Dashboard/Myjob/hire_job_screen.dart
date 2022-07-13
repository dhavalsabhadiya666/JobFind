import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/Dashboard/Myjob/payment_screen.dart';
import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../Message/message_list_screen.dart';

class HireJobScreen extends StatefulWidget {
  const HireJobScreen({Key? key}) : super(key: key);

  @override
  State<HireJobScreen> createState() => _HireJobScreenState();
}

class _HireJobScreenState extends State<HireJobScreen> {
  String selectedoption = '';
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    titleName: VariableUtils.hireForJob,
                    otherIcon: ImageUtils.messageIcon,
                    otherTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                            context,
                          ) =>
                                  MessageListScreen()));
                    },
                  ),
                ],
              )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 3.w, bottom: 3.w),
                    width: double.infinity,
                    color: ColorUtils.aliceBlue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          VariableUtils.pickupACarBikeFrom,
                          style: FontTextStyle.GorditaW5S10darkBlack,
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3.w,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Center(
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(ImageUtils.profileTemImage),
                                radius: 14.w,
                              ),
                            ),
                            SizedBox(
                              height: 3.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Robin Colida',
                                  style: FontTextStyle.GorditaW7S12darkBlack,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                SvgPicture.asset(
                                  ImageUtils.populationIcon,
                                  height: 4.w,
                                )
                              ],
                            ),
                            // SizedBox(
                            //   height: 2.w,
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  ImageUtils.driverListIcon,
                                  height: 3.w,
                                  color: ColorUtils.grey,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Text(
                                  'Con Air Cargo Van',
                                  style: FontTextStyle.GorditaW5S10lightBlack,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.w,
                      ),
                      Divider(),
                      SizedBox(
                        height: 2.w,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '503',
                                  style: FontTextStyle.GorditaW7S10darkBlack,
                                ),
                                Text(
                                  VariableUtils.totalDeliveries,
                                  style: FontTextStyle.GorditaW5S10lightBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.w,
                              child: VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                                indent: 15,
                                //   indent: 20,
                                width: 10,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$2,500',
                                  style: FontTextStyle.GorditaW7S10darkBlack,
                                ),
                                Text(
                                  VariableUtils.bidAmount,
                                  style: FontTextStyle.GorditaW5S10lightBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.w,
                              child: VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                                indent: 15,
                                //   indent: 20,
                                width: 10,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '4.3',
                                      style:
                                          FontTextStyle.GorditaW7S10darkBlack,
                                    ),
                                    SvgPicture.asset(
                                      ImageUtils.starIcon,
                                      height: 4.w,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '56 Reviews',
                                      style:
                                          FontTextStyle.GorditaW5S10lightBlack,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    SvgPicture.asset(
                                      ImageUtils.reviewsIcon,
                                      height: 4.w,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Divider(),
                      SizedBox(
                        height: 5.w,
                      ),
                      Text(
                        VariableUtils.listOfItems,
                        style: FontTextStyle.GorditaW7S12darkBlack,
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      VariableUtils.quantity,
                                      style:
                                          FontTextStyle.GorditaW5S10lightBlack,
                                    ),
                                    SizedBox(
                                      height: 5.w,
                                    ),
                                    Text(
                                      '8',
                                      style:
                                          FontTextStyle.GorditaW7S10darkBlack,
                                    ),
                                    SizedBox(
                                      height: 5.w,
                                    ),
                                    Text(
                                      '1',
                                      style:
                                          FontTextStyle.GorditaW7S10darkBlack,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      VariableUtils.itemsName,
                                      style:
                                          FontTextStyle.GorditaW4S10lightBlack,
                                    ),
                                    SizedBox(
                                      height: 5.w,
                                    ),
                                    Text(
                                      'Dining table & chair, office desk & chair',
                                      style:
                                          FontTextStyle.GorditaW7S10darkBlack,
                                    ),
                                    SizedBox(
                                      height: 5.w,
                                    ),
                                    Text(
                                      '5 seater sofa set',
                                      style:
                                          FontTextStyle.GorditaW7S10darkBlack,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.w,
                ),
                Container(
                  decoration: BoxDecoration(color: ColorUtils.accent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorUtils.white,
                          // borderRadius: BorderRadius.circular(15)
                        ),
                        child: SvgPicture.asset(
                          ImageUtils.checkIcon,
                          height: 4.w,
                        ),
                        padding: EdgeInsets.all(7),
                      ),
                      Text(
                        VariableUtils.youDontWantToGoWithInsurance,
                        style: FontTextStyle.GorditaW7S10darkBlack.copyWith(
                            color: ColorUtils.white),
                      ),
                      SvgPicture.asset(
                        ImageUtils.insuranceIcon,
                        height: 7.w,
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 3.w, bottom: 3.w, right: 3.w, top: 3.w),
                  color: ColorUtils.aliceBlue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        VariableUtils.pricingSummary,
                        style: FontTextStyle.GorditaW7S12darkBlack,
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  VariableUtils.description,
                                  style: FontTextStyle.GorditaW4S10lightBlack,
                                ),
                                Text(VariableUtils.amount,
                                    style: FontTextStyle.GorditaW4S10lightBlack)
                              ],
                            ),
                            SizedBox(
                              height: 3.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  VariableUtils.serviceFees,
                                  style: FontTextStyle.GorditaW5S12darkBlack,
                                ),
                                Text(
                                  '\$2,500',
                                  style: FontTextStyle.GorditaW5S12darkBlack,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  VariableUtils.insurance,
                                  style: FontTextStyle.GorditaW5S12darkBlack,
                                ),
                                Text(
                                  '\$300',
                                  style: FontTextStyle.GorditaW5S12darkBlack,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.w,
                            ),
                            Divider(),
                            SizedBox(
                              height: 2.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  VariableUtils.totalPayble,
                                  style: FontTextStyle.GorditaW5S12darkBlack,
                                ),
                                Text(
                                  "\$2,800",
                                  style: FontTextStyle.GorditaW5S12darkBlack,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.w,
                ),
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
                SizedBox(
                  height: 3.w,
                ),
                ListTile(
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Radio(
                      activeColor: ColorUtils.primaryColor,
                      value: VariableUtils.acceptAboveTermsConditions,
                      groupValue: selectedoption,
                      onChanged: (value) {
                        setState(() {
                          selectedoption = value!.toString();
                        });
                      },
                    ),
                  ),
                  title: Text(VariableUtils.acceptAboveTermsConditions,
                      style: FontTextStyle.GorditaW5S12darkBlack),
                ),
                CustomButton(
                  title: VariableUtils.goToPayment,
                  backgroundColor: ColorUtils.darkBlack,
                  onPressed: () {
                    showModalBottomSheet(
                        enableDrag: true,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return showModelBottompayment();
                        });
                  },
                  width: double.infinity,
                  height: 20.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showModelBottompayment() {
    return Container(
      //height: 60.w,
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
                    Text(
                      VariableUtils.paymentDesc,
                      style: FontTextStyle.GorditaW7S12darkBlack,
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    CustomButton(
                      title: VariableUtils.payWithDebitCredit,
                      backgroundColor: ColorUtils.darkBlack,
                      textStyle: FontTextStyle.GorditaW5S10primarycolor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentScreen()));
                      },
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        paypal(),
                        SizedBox(
                          width: 2.w,
                        ),
                        venmo(),
                        SizedBox(
                          width: 2.w,
                        ),
                        gPay()
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget paypal() {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorUtils.navyBlue),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(
                    ImageUtils.payPalIcon,
                    height: 5.w,
                  ),
                ],
              ),
            )));
  }

  Widget venmo() {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorUtils.lightBlue),
            child: GestureDetector(
                onTap: () {},
                child: Center(
                    child: Image.asset(
                  ImageUtils.venmoIcon,
                  scale: 2,
                )))));
  }

  Widget gPay() {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: ColorUtils.grey),
            child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: SvgPicture.asset(
                    ImageUtils.applePay,
                    height: 5.w,
                  ),
                ))));
  }
}
