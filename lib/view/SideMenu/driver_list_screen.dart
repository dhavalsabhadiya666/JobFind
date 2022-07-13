import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';

import '../../utils/font_style_utils.dart';
import '../AllowPermission/widget/custom_button.dart';

class DriverListScreen extends StatefulWidget {
  const DriverListScreen({Key? key}) : super(key: key);

  @override
  State<DriverListScreen> createState() => _DriverListScreenState();
}

class _DriverListScreenState extends State<DriverListScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int selected = 0;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(40.w),
              child: Container(
                color: ColorUtils.white,
                child: Column(
                  children: [
                    appBar(),
                    TabBar(
                        onTap: (value) {
                          setState(() {
                            selected = value;
                          });
                        },
                        indicatorColor: ColorUtils.primaryColor,
                        controller: _tabController,
                        labelStyle: FontTextStyle.GorditaW7S10darkBlack,
                        unselectedLabelStyle:
                            FontTextStyle.GorditaW7S10lightBlack,
                        labelColor: ColorUtils.darkBlack,
                        unselectedLabelColor: ColorUtils.lightBlack,
                        labelPadding: EdgeInsets.symmetric(
                          vertical: 2.w,
                        ),
                        tabs: [
                          Text(
                            VariableUtils.allDrivers,
                          ),
                          Text(
                            VariableUtils.favourites,
                          ),
                        ]),
                    SizedBox(
                      height: 3.w,
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 5.w, top: 3.w, bottom: 3.w),
                      decoration: BoxDecoration(color: ColorUtils.accent),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(1.w),
                            decoration: BoxDecoration(
                                color: ColorUtils.white,
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              ImageUtils.lockIcon,
                              height: 4.w,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            VariableUtils.yourInformationIsStoredSecurely,
                            style: FontTextStyle.GorditaW5S10white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          backgroundColor: ColorUtils.aliceBlue,
          body: TabBarView(
            controller: _tabController,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [driverList()],
                    ),
                  )),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [driverList()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget driverList() {
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(3.w),
                decoration: BoxDecoration(
                    color: ColorUtils.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.5), //color of shadow
                    //     spreadRadius: 3, //spread radius
                    //     blurRadius: 1, // blur radius
                    //     offset: Offset(3, 3),
                    //   )
                    // ],
                    borderRadius: BorderRadius.circular(2.w)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(ImageUtils.profileTemImage),
                          radius: 6.w,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Container(
                          width: 73.w,
                          //color: ColorUtils.primaryColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 52.w,
                                  //color: ColorUtils.red,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Feni Olgano",
                                            style: FontTextStyle
                                                .GorditaW7S10darkBlack,
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          SvgPicture.asset(
                                            ImageUtils.populationIcon,
                                            height: 6.w,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            ImageUtils.driverListIcon,
                                            color: ColorUtils.grey,
                                            height: 4.w,
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Container(
                                            // color: ColorUtils.white,
                                            width: 46.w,
                                            child: Text(
                                              "Con Air Cargo Van",
                                              softWrap: true,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: FontTextStyle
                                                  .GorditaW5S10lightBlack,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                              Container(
                                //color: ColorUtils.black,
                                width: 20.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2.w),
                                      decoration: BoxDecoration(
                                          color: ColorUtils.aliceBlue,
                                          borderRadius:
                                              BorderRadius.circular(1.w)),
                                      child: SvgPicture.asset(
                                        ImageUtils.messageIcon,
                                        color: ColorUtils.black,
                                        height: 4.w,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(2.w),
                                      decoration: BoxDecoration(
                                          color: ColorUtils.lightpink,
                                          borderRadius:
                                              BorderRadius.circular(1.w)),
                                      child: SvgPicture.asset(
                                        ImageUtils.blackHeartIcon,
                                        color: ColorUtils.black,
                                        height: 4.w,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    Divider(),
                    SizedBox(
                      height: 2.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "150",
                              style: FontTextStyle.GorditaW7S10darkBlack,
                            ),
                            Text(
                              VariableUtils.totalDeliveries,
                              style: FontTextStyle.GorditaW5S10lightBlack,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                          child: VerticalDivider(
                            // color: Colors.red,
                            thickness: 2,
                            indent: 1,
                            endIndent: 0,
                            width: 2.w,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "4.3",
                                  style: FontTextStyle.GorditaW7S10darkBlack,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SvgPicture.asset(
                                  ImageUtils.starIcon,
                                  width: 5.w,
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "56 Reviews",
                                  style: FontTextStyle.GorditaW5S10lightBlack,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                SvgPicture.asset(
                                  ImageUtils.reviewsIcon,
                                  width: 4.w,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                          child: VerticalDivider(
                            // color: Colors.red,
                            thickness: 2,
                            indent: 1,
                            endIndent: 0,
                            width: 2.w,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mar 2021",
                              style: FontTextStyle.GorditaW7S10darkBlack,
                            ),
                            Text(
                              VariableUtils.Joined,
                              style: FontTextStyle.GorditaW5S10lightBlack,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    Divider(),
                    SizedBox(
                      height: 2.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(VariableUtils.viewDriverProfile,
                            style:
                                FontTextStyle.GorditaW5S10lightBlack.copyWith(
                              decoration: TextDecoration.underline,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3.w,
              )
            ],
          );
        },
      ),
    );
  }

  Widget appBar() {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
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
                    //color: ColorUtils.red,
                    child: SvgPicture.asset(
                      ImageUtils.backIcon,
                      height: 4.5.w,
                      color: ColorUtils.black,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(
                  top: 3.w,
                ),
                child: Text(
                  VariableUtils.driversListTitle,
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
                        SvgPicture.asset(
                          ImageUtils.searchIcon,
                          height: 5.w,
                        ),
                        SvgPicture.asset(
                          ImageUtils.sortListIcon,
                          height: 4.w,
                        ),
                      ],
                    )),
              )
            ],
          ),
          // SizedBox(
          //   height: 2.w,
          // ),
        ],
      ),
    );
  }
}
