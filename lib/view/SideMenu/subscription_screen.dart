import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../utils/color_utils.dart';
import '../../utils/enum_utils.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import 'Setting/widgets/custom_setting_appbar.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  //bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
              child: GestureDetector(
            onTap: () {},
            child: Container(
                height: 18.w,
                color: ColorUtils.darkBlack,
                child: Center(
                  child: Text(
                    VariableUtils.subscribeNow,
                    style: FontTextStyle.GorditaW5S10primarycolor.copyWith(
                        fontSize: 12.sp),
                  ),
                )),
          )),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(20.w),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    titleName: VariableUtils.subscriptions,
                  ),

                  ///Divider(),
                ],
              )),
          backgroundColor: ColorUtils.aliceBlue,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: subscription.length,
                      itemBuilder: (BuildContext context, int parentIndex) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  // subscription[parentIndex]["isSelected"] =
                                  //     !(subscription[parentIndex]
                                  //             ["isSelected"] ??
                                  //         false);

                                  setState(() {
                                    subscription.forEach((element) {
                                      element.isSelected = false;
                                    });

                                    subscription[parentIndex].isSelected = true;
                                  });

                                  // subscription[parentIndex]["isSelected"] =
                                  //     true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: ColorUtils.white,
                                    border:
                                        // subscription[parentIndex]
                                        //         ["isSelected"]
                                        //     ? Border.all(
                                        //         color: ColorUtils.primaryColor)
                                        //     :
                                        Border.all(color: ColorUtils.white)),
                                padding: EdgeInsets.only(
                                    top: 4.w,
                                    bottom: 4.w,
                                    left: 3.w,
                                    right: 3.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          subscription[parentIndex]
                                                      ["isSelected"] ==
                                                  false
                                              ? SvgPicture.asset(
                                                  ImageUtils.radioBtnIcon,
                                                  height: 6.w,
                                                )
                                              : SvgPicture.asset(
                                                  ImageUtils.radioFillBtnIcon,
                                                  height: 6.w,
                                                ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Container(
                                            width: 75.w,
                                            // color: ColorUtils.primaryColor,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  subscription[parentIndex]
                                                      ["title"],
                                                  style: FontTextStyle
                                                      .GorditaW7S12darkBlack,
                                                ),
                                                Text(
                                                  subscription[parentIndex]
                                                      ["subTitle"],
                                                  softWrap: true,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: FontTextStyle
                                                      .GorditaW4S10lightBlack,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.w),
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: subscription[parentIndex]
                                                    ["data"]
                                                .length,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                  width: 77.w,
                                                  //color: ColorUtils.red,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          SvgPicture.asset(
                                                            ImageUtils.dotIcon,
                                                            height: 1.5.w,
                                                          ),
                                                          SizedBox(
                                                            width: 2.w,
                                                          ),
                                                          Container(
                                                            // color: ColorUtils.blue,
                                                            width: 70.w,
                                                            child: Text(
                                                              subscription[
                                                                      parentIndex]
                                                                  [
                                                                  "data"][index],
                                                              softWrap: true,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: FontTextStyle
                                                                  .GorditaW5S10darkBlack,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 3.w,
                                                      ),
                                                    ],
                                                  ));
                                            }))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.w,
                            ),
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
