import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/auth/widget/custom_text_form_field.dart';

import '../../utils/color_utils.dart';
import '../../utils/font_style_utils.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _expDateController = TextEditingController();
  TextEditingController _securityCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(25.w),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 3.w, right: 2.w, top: 3.w, bottom: 3.w),
                            // color: ColorUtils.red,
                            child: SvgPicture.asset(
                              ImageUtils.backIcon,
                              height: 4.5.w,
                              color: ColorUtils.black,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 3.w),
                        child: Text(
                          VariableUtils.paymentMethodTitle,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.w, right: 3.w),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 4.w, right: 4.w, top: 2.w, bottom: 2.w),
                            decoration: BoxDecoration(
                                color: ColorUtils.black,
                                borderRadius: BorderRadius.circular(2.w)),
                            child: Text(
                              VariableUtils.add,
                              style: FontTextStyle.GorditaW5S10white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(),
                ],
              )),
          backgroundColor: ColorUtils.white,
          body: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Column(
              children: [
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
                                          showModalBottomSheet(
                                              enableDrag: true,
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return showModelBottom();
                                              });
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "****",
                                    style: FontTextStyle.GorditaW5S10white,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "****",
                                    style: FontTextStyle.GorditaW5S10white,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "****",
                                    style: FontTextStyle.GorditaW5S10white,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "2050",
                                    style: FontTextStyle.GorditaW5S10white,
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
                                top: 5.w, left: 3.w, right: 3.w, bottom: 5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      style:
                                          FontTextStyle.GorditaW7S10darkBlack,
                                    ),
                                    Text(
                                      VariableUtils.expDate,
                                      style:
                                          FontTextStyle.GorditaW7S10lightBlack,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }

  Widget showModelBottom() {
    return Container(
      //height: 170.w,
      color: ColorUtils.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.w,
              ),
              Text(
                VariableUtils.creditDebitCard,
                style: FontTextStyle.GorditaW7S12darkBlack,
              ),
              SizedBox(
                height: 8.w,
              ),
              CustomTextFormField(
                fieldController: _cardNumberController,
                fieldName: VariableUtils.cardNumber,
              ),
              SizedBox(
                height: 4.w,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      fieldController: _expDateController,
                      fieldName: VariableUtils.expDate,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      fieldController: _securityCodeController,
                      fieldName: VariableUtils.securityCode,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    title: VariableUtils.saveCard,
                    textColor: ColorUtils.darkBlack,
                    textStyle: FontTextStyle.GorditaW7S10darkBlack,
                    backgroundColor: ColorUtils.primaryColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    width: 38.w,
                  )
                ],
              ),
              SizedBox(
                height: 4.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
