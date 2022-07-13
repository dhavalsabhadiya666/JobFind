import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../Message/message_list_screen.dart';

class DriverProfileScreen extends StatefulWidget {
  const DriverProfileScreen({Key? key}) : super(key: key);

  @override
  State<DriverProfileScreen> createState() => _DriverProfileScreenState();
}

class _DriverProfileScreenState extends State<DriverProfileScreen> {
  List images = [ImageUtils.cardBackgroundImage, ImageUtils.profileTemImage];
  int select = 0;
  int selecttext = 0;
  int selected = 0;
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
                      titleName: VariableUtils.driverProfile,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: ColorUtils.darkBlack),
                                  child: Column(
                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 30.w,
                                          ),
                                          Stack(
                                            overflow: Overflow.visible,
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    ImageUtils.profileTemImage),
                                                radius: 40,
                                              ),
                                              Positioned(
                                                left: 60,
                                                child: CircleAvatar(
                                                  //child: Text('PP'),
                                                  backgroundImage: AssetImage(
                                                      ImageUtils
                                                          .profileTemImage),
                                                  radius: 40,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4.w,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Robin Colida',
                                            style: FontTextStyle
                                                    .GorditaW5S14darkBlack
                                                .copyWith(
                                                    color: ColorUtils.white),
                                          ),
                                          SvgPicture.asset(
                                            ImageUtils.populationIcon,
                                            height: 4.w,
                                          )
                                        ],
                                      ),
                                      Text(
                                        'Denver (Colorado)',
                                        style: FontTextStyle
                                                .GorditaW4S10lightBlack
                                            .copyWith(color: ColorUtils.white),
                                      ),
                                      SizedBox(
                                        height: 4.w,
                                      ),
                                    ],
                                  ),
                                  width: double.infinity,
                                ),
                                Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                      color: ColorUtils.primaryLight),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '503',
                                            style: FontTextStyle
                                                .GorditaW5S12darkBlack,
                                          ),
                                          Text(
                                            VariableUtils.totalDeliveries,
                                            style: FontTextStyle
                                                .GorditaW7S10darkBlack,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '28/Feb/19 (2.3yr)',
                                            style: FontTextStyle
                                                .GorditaW5S12darkBlack,
                                          ),
                                          Text(
                                            VariableUtils.joined,
                                            style: FontTextStyle
                                                .GorditaW7S10darkBlack,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 16.w,
                              left: 35.w,
                              right: 35.w,
                              child: Row(
                                children: [
                                  Container(
                                    width: 15.w,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: ColorUtils.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.5',
                                          style: FontTextStyle
                                              .GorditaW7S10darkBlack,
                                        ),
                                        SvgPicture.asset(
                                          ImageUtils.starIcon,
                                          height: 3.w,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Container(
                                      width: 5.w,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: ColorUtils.white,
                                          shape: BoxShape.circle),
                                      child: SvgPicture.asset(
                                        ImageUtils.blackHeartIcon,
                                        height: 8.w,
                                      )),
                                ],
                              )),
                        ],
                      ),
                      DefaultTabController(
                          length: 2,
                          initialIndex: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: TabBar(
                                  indicatorColor: ColorUtils.primaryColor,
                                  labelStyle:
                                      FontTextStyle.GorditaW7S10darkBlack,
                                  labelColor: ColorUtils.darkBlack,
                                  unselectedLabelColor: ColorUtils.lightBlack,
                                  // labelPadding: EdgeInsets.symmetric(
                                  //     vertical: 3.w, horizontal: 10.w),
                                  unselectedLabelStyle:
                                      FontTextStyle.GorditaW7S10lightBlack,

                                  tabs: [
                                    Tab(text: VariableUtils.about),
                                    Tab(text: VariableUtils.feedBack),
                                  ],
                                ),
                              ),
                              Container(
                                height: 100.w,
                                //color: Colors.red,
                                width: double.infinity,
                                child: TabBarView(
                                  children: [
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.w, vertical: 3.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              VariableUtils.letKnowAboutDriver,
                                              style: FontTextStyle
                                                  .GorditaW7S12darkBlack,
                                            ),
                                            Text(
                                              VariableUtils.aboutDriver,
                                              style: FontTextStyle
                                                  .GorditaW5S10lightBlack,
                                            ),
                                            SizedBox(
                                              height: 5.w,
                                            ),
                                            Text(
                                              VariableUtils.language,
                                              style: FontTextStyle
                                                  .GorditaW7S12darkBlack,
                                            ),
                                            Text(
                                              VariableUtils.speakingLanguages,
                                              style: FontTextStyle
                                                  .GorditaW5S10lightBlack,
                                            ),
                                            SizedBox(
                                              height: 5.w,
                                            ),
                                            Text(
                                              VariableUtils.documentation,
                                              style: FontTextStyle
                                                  .GorditaW7S12darkBlack,
                                            ),
                                            Text(
                                              VariableUtils.drivingLicence,
                                              style: FontTextStyle
                                                  .GorditaW5S10lightBlack,
                                            ),
                                            SizedBox(
                                              height: 2.w,
                                            ),
                                            Image.asset(
                                                ImageUtils.licenceTemImage),
                                            SizedBox(
                                              height: 5.w,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                  color: ColorUtils.aliceBlue),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        VariableUtils
                                                            .identification,
                                                        style: FontTextStyle
                                                            .GorditaW5S12darkBlack,
                                                      ),
                                                      Text(
                                                        'PDF (285 KB)',
                                                        style: FontTextStyle
                                                            .GorditaW5S10lightBlack,
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(4.w),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            ColorUtils.white),
                                                    child: SvgPicture.asset(
                                                      ImageUtils.downloadIcon,
                                                      height: 6.w,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.w,
                                            ),
                                            Text(
                                              '2022 Ford F-150 Pickup Truch',
                                              style: FontTextStyle
                                                  .GorditaW7S12darkBlack,
                                            ),
                                            Text(
                                              'Vehicle no: KJDD05',
                                              style: FontTextStyle
                                                  .GorditaW5S10lightBlack,
                                            ),
                                            SizedBox(
                                              height: 5.w,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                  color: ColorUtils.Textfeild),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        VariableUtils.insurance,
                                                        style: FontTextStyle
                                                            .GorditaW5S12darkBlack,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Exp: 15 Feb 2022',
                                                            style: FontTextStyle
                                                                .GorditaW5S10darkBlack,
                                                          ),
                                                          SizedBox(
                                                            width: 1.w,
                                                          ),
                                                          Text(
                                                            'PDF (285 KB)',
                                                            style: FontTextStyle
                                                                .GorditaW5S10lightBlack,
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(4.w),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            ColorUtils.white),
                                                    child: SvgPicture.asset(
                                                      ImageUtils.downloadIcon,
                                                      height: 6.w,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.w,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                  color: ColorUtils.Textfeild),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        VariableUtils
                                                            .registration,
                                                        style: FontTextStyle
                                                            .GorditaW5S12darkBlack,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Exp: 15 Feb 2022',
                                                            style: FontTextStyle
                                                                .GorditaW5S10darkBlack,
                                                          ),
                                                          SizedBox(
                                                            width: 1.w,
                                                          ),
                                                          Text(
                                                            'PDF (285 KB)',
                                                            style: FontTextStyle
                                                                .GorditaW5S10lightBlack,
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(4.w),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            ColorUtils.white),
                                                    child: SvgPicture.asset(
                                                      ImageUtils.downloadIcon,
                                                      height: 6.w,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.w, vertical: 2.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '30 Reviews',
                                                style: FontTextStyle
                                                    .GorditaW7S12darkBlack,
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    ImageUtils.searchIcon,
                                                    height: 5.w,
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      showModalBottomSheet(
                                                          enableDrag: true,
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          context: context,
                                                          builder: (context) {
                                                            return sortListBottom();
                                                          });
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(8),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      1.w),
                                                          border: Border.all(
                                                              color: ColorUtils
                                                                  .grey)),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            VariableUtils
                                                                .sortBy,
                                                            style: FontTextStyle
                                                                .GorditaW5S10lightBlack,
                                                          ),
                                                          SizedBox(
                                                            width: 1.w,
                                                          ),
                                                          SvgPicture.asset(
                                                            ImageUtils
                                                                .downArrowIcon,
                                                            height: 2.w,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5.w,
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(
                                                                0.5), //color of shadow
                                                        spreadRadius:
                                                            3, //spread radius
                                                        blurRadius:
                                                            5, // blur radius
                                                        offset: Offset(0, 3),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.w),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  // boxShadow: [
                                                                  //   BoxShadow(
                                                                  //     color: Colors.grey.withOpacity(
                                                                  //         0.5), //color of shadow
                                                                  //     spreadRadius: 3, //spread radius
                                                                  //     blurRadius: 5, // blur radius
                                                                  //     offset: Offset(0, 3),
                                                                  //   )
                                                                  // ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(1
                                                                              .w),
                                                                  color:
                                                                      ColorUtils
                                                                          .white),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            4.w,
                                                                        right:
                                                                            3.w,
                                                                        left: 3
                                                                            .w),
                                                                child: Row(
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          5.w,
                                                                      backgroundImage:
                                                                          AssetImage(
                                                                              ImageUtils.profileTemImage),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          3.w,
                                                                    ),
                                                                    Container(
                                                                        width: 74
                                                                            .w,
                                                                        // color: ColorUtils.red,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Container(
                                                                              width: 54.w,
                                                                              // color: ColorUtils.blue,
                                                                              child: Text(
                                                                                "Feni Olgano",
                                                                                softWrap: true,
                                                                                overflow: TextOverflow.visible,
                                                                                style: FontTextStyle.GorditaW7S10darkBlack,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              padding: EdgeInsets.only(top: 2.w, bottom: 2.w, right: 4.w, left: 4.w),
                                                                              decoration: BoxDecoration(color: ColorUtils.primaryLight, borderRadius: BorderRadius.circular(50)),
                                                                              child: Row(
                                                                                children: [
                                                                                  Text(
                                                                                    "4.5",
                                                                                    style: FontTextStyle.GorditaW5S10darkBlack,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 1.w,
                                                                                  ),
                                                                                  SvgPicture.asset(
                                                                                    ImageUtils.starIcon,
                                                                                    height: 4.w,
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ))
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 2.w,
                                                              ),
                                                              Divider(),
                                                              SizedBox(
                                                                height: 2.w,
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              3.w),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        VariableUtils
                                                                            .feedBackDes,
                                                                        style: FontTextStyle
                                                                            .GorditaW5S10darkBlack,
                                                                      ),
                                                                    ],
                                                                  )),
                                                              SizedBox(
                                                                height: 2.w,
                                                              ),
                                                              Divider(),
                                                              SizedBox(
                                                                height: 2.w,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            3.w),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        showModalBottomSheet(
                                                                            enableDrag:
                                                                                true,
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor: Colors
                                                                                .transparent,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return showModelBottom();
                                                                            });
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        VariableUtils
                                                                            .seeFullRatings,
                                                                        style: FontTextStyle.GorditaW5S10accent.copyWith(
                                                                            decoration:
                                                                                TextDecoration.underline),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 2.w,
                                                              ),
                                                            ],
                                                          )),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorUtils
                                                                .aliceBlue,
                                                            borderRadius: BorderRadius.only(
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        1.w),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        1.w)),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3.w),
                                                            child: Row(
                                                              children: [
                                                                SvgPicture
                                                                    .asset(
                                                                  ImageUtils
                                                                      .thankUNextIcon,
                                                                  height: 4.w,
                                                                ),
                                                                Text(
                                                                  VariableUtils
                                                                      .thankYou,
                                                                  style: FontTextStyle
                                                                      .GorditaW7S10darkBlack,
                                                                ),
                                                                Text(
                                                                  "@Deni Olgamo",
                                                                  style: FontTextStyle
                                                                      .GorditaW7S10lightBlack,
                                                                )
                                                              ],
                                                            ),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }

  Widget showModelBottom() {
    return Container(
      height: 70.w,
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
                      VariableUtils.seeRating,
                      style: FontTextStyle.GorditaW7S12darkBlack,
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    DefaultTabController(
                        length: 3,
                        initialIndex: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: TabBar(
                                indicatorColor: ColorUtils.primaryColor,
                                labelStyle: FontTextStyle.GorditaW7S10darkBlack,
                                labelColor: ColorUtils.darkBlack,
                                unselectedLabelColor: ColorUtils.lightBlack,
                                labelPadding: EdgeInsets.symmetric(
                                    vertical: 2.w, horizontal: 2.w),
                                unselectedLabelStyle:
                                    FontTextStyle.GorditaW7S10lightBlack,
                                tabs: [
                                  Tab(text: VariableUtils.overAllExperience),
                                  Tab(text: VariableUtils.driverBehavior),
                                  Tab(text: VariableUtils.driving),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.w,
                            ),
                            Container(
                              height: 40.w,
                              width: double.infinity,
                              child: TabBarView(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 18.w,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            itemCount: 5,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                padding: EdgeInsets.all(10.00),
                                                margin: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorUtils.primaryColor,
                                                    //select==index? ColorUtils.darkBlack:ColorUtils.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child: SvgPicture.asset(
                                                  ImageUtils.starIcon,
                                                  color: ColorUtils.darkBlack,
                                                  height: 8.w,
                                                  // color: select == index
                                                  //     ? ColorUtils.primaryColor
                                                  //     : ColorUtils.grey,
                                                ),
                                              );
                                            }),
                                      ),
                                      Spacer(),
                                      CustomButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        title: VariableUtils.done,
                                        backgroundColor: ColorUtils.darkBlack,
                                        width: double.infinity,
                                      )
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 18.w,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            itemCount: 5,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                padding: EdgeInsets.all(10.00),
                                                margin: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorUtils.primaryColor,
                                                    //select==index? ColorUtils.darkBlack:ColorUtils.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child: SvgPicture.asset(
                                                  ImageUtils.starIcon,
                                                  color: ColorUtils.darkBlack,
                                                  height: 8.w,
                                                  // color: select == index
                                                  //     ? ColorUtils.primaryColor
                                                  //     : ColorUtils.grey,
                                                ),
                                              );
                                            }),
                                      ),
                                      Spacer(),
                                      CustomButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        title: 'Done',
                                        backgroundColor: ColorUtils.darkBlack,
                                        width: double.infinity,
                                      )
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 18.w,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            itemCount: 5,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                padding: EdgeInsets.all(10.00),
                                                margin: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorUtils.primaryColor,
                                                    //select==index? ColorUtils.darkBlack:ColorUtils.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child: SvgPicture.asset(
                                                  ImageUtils.starIcon,
                                                  color: ColorUtils.darkBlack,
                                                  height: 8.w,
                                                  // color: select == index
                                                  //     ? ColorUtils.primaryColor
                                                  //     : ColorUtils.grey,
                                                ),
                                              );
                                            }),
                                      ),
                                      Spacer(),
                                      CustomButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        title: 'Done',
                                        backgroundColor: ColorUtils.darkBlack,
                                        width: double.infinity,
                                      )
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget sortListBottom() {
    return Container(
      //height: 170.w,
      color: ColorUtils.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.w,
              ),
              Row(
                children: [
                  Text(
                    VariableUtils.sortBy,
                    style: FontTextStyle.GorditaW7S14darkBlack,
                  )
                ],
              ),
              SizedBox(
                height: 5.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected == 0;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      VariableUtils.highToLowRated,
                      style: selected == 0
                          ? FontTextStyle.GorditaW5S12accent
                          : FontTextStyle.GorditaW5S12darkBlack,
                    ),
                    SvgPicture.asset(
                      ImageUtils.checkIcon,
                      height: 5.w,
                      color:
                          selected == 0 ? ColorUtils.accent : ColorUtils.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected == 1;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      VariableUtils.lowToHighRated,
                      style: selected == 1
                          ? FontTextStyle.GorditaW5S12accent
                          : FontTextStyle.GorditaW5S12darkBlack,
                    ),
                    SvgPicture.asset(
                      ImageUtils.checkIcon,
                      height: 5.w,
                      color:
                          selected == 1 ? ColorUtils.accent : ColorUtils.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected == 2;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      VariableUtils.newest,
                      style: selected == 2
                          ? FontTextStyle.GorditaW5S12accent
                          : FontTextStyle.GorditaW5S12darkBlack,
                    ),
                    SvgPicture.asset(
                      ImageUtils.checkIcon,
                      height: 5.w,
                      color:
                          selected == 2 ? ColorUtils.accent : ColorUtils.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
