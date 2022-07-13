import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/Dashboard/Myjob/search_driver_screen.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../Message/message_list_screen.dart';
import 'driver_profile_screen.dart';
import 'driver_filter_screen.dart';
import 'hire_job_screen.dart';

class FindDriverScreen extends StatefulWidget {
  const FindDriverScreen({Key? key}) : super(key: key);

  @override
  State<FindDriverScreen> createState() => _FindDriverScreenState();
}

class _FindDriverScreenState extends State<FindDriverScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorUtils.aliceBlue,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(20.w),
            child: appBar(),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.all(4.w),
                            margin: EdgeInsets.all(8.00),
                            decoration: BoxDecoration(
                                color: ColorUtils.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(1.w)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      //child: Text('PP'),
                                      backgroundImage: AssetImage(
                                          ImageUtils.profileTemImage),
                                      radius: 5.w,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Feni Olgano',
                                              style: FontTextStyle
                                                  .GorditaW7S12darkBlack,
                                            ),
                                            SvgPicture.asset(
                                              ImageUtils.populationIcon,
                                              height: 4.w,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              ImageUtils.driverListIcon,
                                              height: 4.w,
                                              color: ColorUtils.grey,
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              "Con Air Cargo Van",
                                              style: FontTextStyle
                                                  .GorditaW4S10lightBlack,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ColorUtils.lightpink),
                                      child: SvgPicture.asset(
                                        ImageUtils.redHeartIcon,
                                        height: 4.w,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5.w,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '150',
                                          style: FontTextStyle
                                              .GorditaW5S14darkBlack,
                                        ),
                                        Text(
                                          VariableUtils.totalDeliveries,
                                          style: FontTextStyle
                                              .GorditaW5S10lightBlack,
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
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '4.3',
                                              style: FontTextStyle
                                                  .GorditaW5S14darkBlack,
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
                                              style: FontTextStyle
                                                  .GorditaW5S10lightBlack,
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
                                SizedBox(
                                  height: 5.w,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: CustomButton(
                                      textStyle: FontTextStyle
                                          .GorditaW5S10primarycolor,
                                      title: VariableUtils.chatWithDriver,
                                      backgroundColor: ColorUtils.black,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MessageListScreen()));
                                      },
                                      height: 12.w,
                                    )),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Expanded(
                                        child: CustomButton(
                                      height: 12.w,
                                      title: VariableUtils.hireNow,
                                      textStyle:
                                          FontTextStyle.GorditaW5S10darkBlack,
                                      backgroundColor: ColorUtils.primaryColor,
                                      textColor: ColorUtils.darkBlack,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HireJobScreen()));
                                      },
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 5.w,
                                ),
                                InkWell(
                                  child: Center(
                                      child: Text(
                                    VariableUtils.viewDriverProfile,
                                    style: FontTextStyle
                                        .GorditaW5S12darkBlackunderline,
                                  )),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DriverProfileScreen()));
                                  },
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Container(
      color: ColorUtils.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                    child: SvgPicture.asset(
                      ImageUtils.backIcon,
                      height: 4.5.w,
                      color: ColorUtils.black,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 3.w),
                child: Text(
                  VariableUtils.driver,
                  style: FontTextStyle.GorditaW7S12darkBlack,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.w, right: 3.w),
                child: Container(
                    width: 15.w,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SearchDriverScreen()));
                          },
                          child: SvgPicture.asset(
                            ImageUtils.searchIcon,
                            height: 5.w,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DriverFilterScreen()));
                          },
                          child: SvgPicture.asset(
                            ImageUtils.sortListIcon,
                            height: 4.w,
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
          Text(
            VariableUtils.possible,
            style: FontTextStyle.GorditaW4S10lightBlack,
          )
        ],
      ),
    );
  }
}
