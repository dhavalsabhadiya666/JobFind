import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/createnewjob/create_job1_screen.dart';

import '../../../utils/color_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../sideMenu/widgets/custom_drawer_screen.dart';

class MyJobScreen extends StatefulWidget {
  const MyJobScreen({Key? key}) : super(key: key);

  @override
  State<MyJobScreen> createState() => _MyJobScreenState();
}

class _MyJobScreenState extends State<MyJobScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int selected = 0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    // selectedEvents = {};
    super.initState();
  }

  //Map<DateTime, List<Event>>selectedEvents ;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  CalendarFormat form = CalendarFormat.month;
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  // List<Event> _getEventsfromDay(DateTime date) {
  //   return selectedEvents[date] ?? [];
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorUtils.aliceBlue,
          drawer: CustomDrawerScreen(),
          key: _scaffoldkey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.w),
            child: Container(
              //color: ColorUtils.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.menuIcon,
                    backOnTap: () {
                      _scaffoldkey.currentState!.openDrawer();
                    },
                    titleName: VariableUtils.myJobs,
                    otherIcon: ImageUtils.sortListIcon,
                    otherTap: () {
                      showModalBottomSheet(
                          enableDrag: true,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return showModelBottomshotlistdate();
                          });
                    },
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: TabBar(
                        isScrollable: true,
                        onTap: (value) {
                          setState(() {
                            selected = value;
                          });
                        },
                        indicatorColor: ColorUtils.primaryColor,
                        labelStyle: FontTextStyle.GorditaW7S10darkBlack,
                        labelColor: ColorUtils.darkBlack,
                        unselectedLabelColor: ColorUtils.lightBlack,
                        labelPadding: EdgeInsets.symmetric(
                            vertical: 3.w, horizontal: 10.w),
                        unselectedLabelStyle:
                            FontTextStyle.GorditaW7S10lightBlack,
                        controller: _tabController,
                        tabs: [
                          Text(
                            VariableUtils.open,
                          ),
                          Text(
                            VariableUtils.draft,
                          ),
                          Text(
                            VariableUtils.completed,
                          )
                        ]),
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hi, Deni',
                        style: FontTextStyle.GorditaW7S16lightBlack,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        VariableUtils.letCreateYourFirst,
                        style: FontTextStyle.GorditaW7S16darkBlack,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        VariableUtils.jobEasily,
                        style: FontTextStyle.GorditaW7S16darkBlack,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        width: 35.w,
                        title: VariableUtils.createJob,
                        textStyle: FontTextStyle.GorditaW5S10primarycolor,
                        backgroundColor: ColorUtils.darkBlack,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateJob1Screen()));
                        },
                      ),
                    ],
                  )
                ],
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: ColorUtils.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.4), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 2, // blur radius
                                      offset: Offset(0, 2),
                                    )
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          VariableUtils.pickupACarBikeFrom,
                                          style: FontTextStyle
                                              .GorditaW7S12darkBlack,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        ImageUtils.moreVertexIcon,
                                        height: 1.w,
                                      ),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                  SizedBox(
                                    height: 1.w,
                                  ),
                                  Text(
                                    VariableUtils.fillmore,
                                    style: FontTextStyle.GorditaW7S12darkBlack,
                                  ),
                                  Text(
                                    'Drafted on 23 Jan, 23:10',
                                    style: FontTextStyle.GorditaW5S10lightBlack,
                                  ),
                                  SizedBox(
                                    height: 4.w,
                                  ),
                                  CustomButton(
                                    onPressed: () {},
                                    backgroundColor: Color(0x12012239),
                                    title: 'Complete Details & Post',
                                    textColor: ColorUtils.darkBlack,
                                    textStyle: FontTextStyle
                                            .GorditaW5S8lightBlack
                                        .copyWith(color: ColorUtils.darkBlack),
                                    width: 45.w,
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
                      child: Container(
                        // padding: EdgeInsets.all(3.w),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(3.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        VariableUtils.pickupACarBikeFrom,
                                        style:
                                            FontTextStyle.GorditaW7S12darkBlack,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // showModalBottomSheet(
                                          //     enableDrag: true,
                                          //     isScrollControlled: true,
                                          //     backgroundColor: Colors.transparent,
                                          //     context: context,
                                          //     builder: (context) {
                                          //       return moreBottom();
                                          //     });
                                        },
                                        child: SvgPicture.asset(
                                          ImageUtils.moreVertexIcon,
                                          height: 1.w,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        VariableUtils.fillmore,
                                        style:
                                            FontTextStyle.GorditaW7S12darkBlack,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(1.6.w),
                                        decoration: BoxDecoration(
                                            color: ColorUtils.primaryLight,
                                            borderRadius:
                                                BorderRadius.circular(6.w)),
                                        child: Text(
                                          VariableUtils.miles12,
                                          style: FontTextStyle
                                              .GorditaW5S10darkBlack,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4.w,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      ColorUtils.black,
                                                  radius: 5,
                                                ),
                                                Container(
                                                    height: 17.w,
                                                    child: VerticalDivider(
                                                      thickness: 1.2,
                                                      color:
                                                          ColorUtils.darkBlack,
                                                    )),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      ColorUtils.darkBlack,
                                                  radius: 5,
                                                ),
                                                Container(
                                                    height: 32.w,
                                                    child: VerticalDivider(
                                                        color: Colors.grey)),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      ColorUtils.primaryColor,
                                                  radius: 5,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    child: LayoutBuilder(
                                                      builder: (context,
                                                          constraint) {
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Hire Driver",
                                                              style: FontTextStyle
                                                                      .GorditaW5S10darkBlack
                                                                  .copyWith(
                                                                      fontWeight:
                                                                          FontWeightClass
                                                                              .bold),
                                                            ),
                                                            SizedBox(
                                                              height: 2.w,
                                                            ),
                                                            Text(
                                                              "Keto Holica is hired for job",
                                                              style: FontTextStyle
                                                                      .GorditaW5S10lightBlack
                                                                  .copyWith(
                                                                      fontWeight:
                                                                          FontWeightClass
                                                                              .bold),
                                                            ),
                                                            SizedBox(
                                                              height: 7.w,
                                                            ),
                                                            Text("Pick-up",
                                                                style: FontTextStyle
                                                                        .GorditaW5S10darkBlack
                                                                    .copyWith(
                                                                        fontWeight:
                                                                            FontWeightClass.bold)),
                                                            SizedBox(
                                                              height: 2.w,
                                                            ),
                                                            Text(
                                                              VariableUtils
                                                                  .pickUpAddress,
                                                              style: FontTextStyle
                                                                  .GorditaW5S10lightBlack,
                                                            ),
                                                            SizedBox(
                                                              height: 1.w,
                                                            ),
                                                            Text(
                                                              VariableUtils
                                                                  .pickUpDate,
                                                              style: FontTextStyle
                                                                  .GorditaW5S10accent,
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 8.w,
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                                VariableUtils
                                                                    .dropOff,
                                                                style: FontTextStyle
                                                                        .GorditaW5S10darkBlack
                                                                    .copyWith(
                                                                        fontWeight:
                                                                            FontWeightClass.bold)),
                                                            SizedBox(
                                                              width: 2.w,
                                                            ),
                                                            Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(1.6
                                                                          .w),
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: ColorUtils
                                                                          .primaryColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.w)),
                                                              child: Text(
                                                                'Delivered',
                                                                style: FontTextStyle
                                                                    .GorditaW5S10darkBlack,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 1.w,
                                                        ),
                                                        Text(
                                                          VariableUtils
                                                              .dropOffAddress,
                                                          style: FontTextStyle
                                                              .GorditaW5S10lightBlack,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.w,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              padding: EdgeInsets.all(3.w),
                              // color: Colors.green,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(ImageUtils.profileTemImage),
                                    radius: 6.w,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Container(
                                      width: 74.w,
                                      // color: ColorUtils.red,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Hired for Job",
                                                style: FontTextStyle
                                                    .GorditaW5S8lightBlack,
                                              ),
                                              Text(
                                                "Keto Holica",
                                                style: FontTextStyle
                                                    .GorditaW7S10darkBlack,
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(1.6.w),
                                                decoration: BoxDecoration(
                                                    color: Color(0x12012239),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.w)),
                                                child: Text(
                                                  "\$230 Paid",
                                                  style: FontTextStyle
                                                      .GorditaW5S10darkBlack,
                                                ),
                                              )
                                            ],
                                          ),
                                          CustomButton(
                                            width: 29.w,
                                            title: VariableUtils.getDetails,
                                            textStyle: FontTextStyle
                                                .GorditaW5S10primarycolor,
                                            backgroundColor:
                                                ColorUtils.darkBlack,
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CreateJob1Screen()));
                                            },
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showModelBottomshotlistdate() {
    return Container(
      // height: 100.w,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          VariableUtils.sortByDate,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                enableDrag: true,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return showModelBottomcelender();
                                });
                          },
                          child: Text(
                            VariableUtils.customRange,
                            style: FontTextStyle.GorditaW5S12darkBlackunderline
                                .copyWith(color: ColorUtils.accent),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          ImageUtils.calendarIcon,
                          color: ColorUtils.grey,
                          height: 6.w,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.today,
                              style: FontTextStyle.GorditaW5S12darkBlack,
                            ),
                            Text(
                              'Aug 19',
                              style: FontTextStyle.GorditaW4S10lightBlack,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          ImageUtils.calendarIcon,
                          height: 6.w,
                          color: ColorUtils.grey,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.yesterday,
                              style: FontTextStyle.GorditaW5S12darkBlack,
                            ),
                            Text(
                              'Aug 19',
                              style: FontTextStyle.GorditaW4S10lightBlack,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          ImageUtils.calendarIcon,
                          height: 6.w,
                          color: ColorUtils.grey,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.lastWeek,
                              style: FontTextStyle.GorditaW5S12darkBlack,
                            ),
                            Text(
                              'Aug 19',
                              style: FontTextStyle.GorditaW4S10lightBlack,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          ImageUtils.calendarIcon,
                          height: 6.w,
                          color: ColorUtils.grey,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              VariableUtils.lastMonth,
                              style: FontTextStyle.GorditaW5S12darkBlack,
                            ),
                            Text(
                              'Aug 19',
                              style: FontTextStyle.GorditaW4S10lightBlack,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                  ],
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: CustomButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      title: VariableUtils.done,
                      backgroundColor: ColorUtils.darkBlack,
                      height: 20.w,
                    ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget showModelBottomcelender() {
    return Container(
      height: 110.w,
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
                    TableCalendar(
                      focusedDay: selectedDay,
                      firstDay: DateTime(1990),
                      lastDay: DateTime(2050),
                      onFormatChanged: (CalendarFormat _format) {
                        setState(() {
                          format = _format;
                        });
                      },
                      startingDayOfWeek: StartingDayOfWeek.sunday,
                      daysOfWeekVisible: true,
                      onDaySelected: (DateTime selectDay, DateTime focusDay) {
                        setState(() {
                          selectedDay = selectDay;
                          focusedDay = focusDay;
                        });
                        print(focusedDay);
                      },
                      selectedDayPredicate: (DateTime date) {
                        return isSameDay(selectedDay, date);
                      },
                      // eventLoader: _getEventsfromDay,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
