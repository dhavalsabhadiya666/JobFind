import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/Dashboard/Myjob/pickup_details_screen.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import '../../CreateNewJob/Widgets/custom_formfield.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../sideMenu/widgets/custom_drawer_screen.dart';

class GetDetailScreen extends StatefulWidget {
  const GetDetailScreen({Key? key}) : super(key: key);

  @override
  State<GetDetailScreen> createState() => _GetDetailScreenState();
}

class _GetDetailScreenState extends State<GetDetailScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int selected = 0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  List<Color> colors = [
    ColorUtils.black,
    ColorUtils.primaryColor,
    ColorUtils.grey
  ];
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
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
                    otherTap: () {},
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
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
                      child: Container(
                        padding: EdgeInsets.all(3.w),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  VariableUtils.pickupACarBikeFrom,
                                  style: FontTextStyle.GorditaW7S12darkBlack,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        enableDrag: true,
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return moreBottom();
                                        });
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
                                  style: FontTextStyle.GorditaW7S12darkBlack,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Container(
                                  padding: EdgeInsets.all(1.6.w),
                                  decoration: BoxDecoration(
                                      color: ColorUtils.primaryLight,
                                      borderRadius: BorderRadius.circular(6.w)),
                                  child: Text(
                                    VariableUtils.miles12,
                                    style: FontTextStyle.GorditaW5S10darkBlack,
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
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                                ColorUtils.primaryColor,
                                            radius: 5,
                                          ),
                                          Container(
                                              height: 10.w,
                                              child: VerticalDivider(
                                                  color: Colors.grey)),
                                          CircleAvatar(
                                            backgroundColor:
                                                Colors.grey.withOpacity(.5),
                                            radius: 5,
                                          ),
                                          Container(
                                              height: 50,
                                              child: VerticalDivider(
                                                  color: Colors.grey)),
                                          Container(
                                              height: 15.w,
                                              child: VerticalDivider(
                                                  color: Colors.grey)),
                                          CircleAvatar(
                                            backgroundColor:
                                                Colors.grey.withOpacity(.5),
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
                                                builder: (context, constraint) {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Find driver and assign job",
                                                        style: FontTextStyle
                                                                .GorditaW5S10darkBlack
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeightClass
                                                                        .bold),
                                                      ),
                                                      SizedBox(
                                                        height: 7.w,
                                                      ),
                                                      Text(
                                                        VariableUtils.pickup,
                                                        style: FontTextStyle
                                                                .GorditaW5S10lightBlack
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeightClass
                                                                        .bold),
                                                      ),
                                                      // SizedBox(
                                                      //   height: 12,
                                                      // ),
                                                      Text(
                                                        VariableUtils
                                                            .pickUpAddress,
                                                        style: FontTextStyle
                                                            .GorditaW5S10lightBlack,
                                                      ),
                                                      Text(
                                                        VariableUtils
                                                            .pickUpDate,
                                                        style: FontTextStyle
                                                                .GorditaW5S10lightBlack
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeightClass
                                                                        .bold),
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
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    VariableUtils.dropOff,
                                                    style: FontTextStyle
                                                            .GorditaW5S10lightBlack
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeightClass
                                                                    .bold),
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
                            Divider(),
                            SizedBox(
                              height: 3.w,
                            ),
                            CustomButton(
                              width: 35.w,
                              title: VariableUtils.getDetails,
                              textStyle: FontTextStyle.GorditaW5S10primarycolor,
                              backgroundColor: ColorUtils.darkBlack,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PickupDetailsScreen()));
                              },
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
        ),
      ),
    );
  }

  Widget moreBottom() {
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
                height: 8.w,
              ),
              Text(
                VariableUtils.edit,
                style: FontTextStyle.GorditaW5S12darkBlack,
              ),
              SizedBox(
                height: 2.w,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      enableDrag: true,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return deleteBottom();
                      });
                },
                child: Text(
                  VariableUtils.delete,
                  style: FontTextStyle.GorditaW5S12darkBlack.copyWith(
                      color: ColorUtils.red),
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

  Widget deleteBottom() {
    return Container(
      height: 100.w,
      color: ColorUtils.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.w),
                  child: Container(
                    padding: EdgeInsets.all(7.w),
                    decoration: BoxDecoration(
                      color: ColorUtils.primaryLight,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      ImageUtils.deleteIcon,
                      height: 14.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.w,
                ),
                Text(
                  VariableUtils.deleteTheJob,
                  style: FontTextStyle.GorditaW7S16darkBlack,
                ),
                SizedBox(
                  height: 3.w,
                ),
                Text(
                  VariableUtils.deleteJobDes1,
                  style: FontTextStyle.GorditaW5S10lightBlack,
                ),
                Text(
                  VariableUtils.deleteJobDes2,
                  style: FontTextStyle.GorditaW5S10lightBlack,
                ),
                SizedBox(
                  height: 8.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                        title: VariableUtils.yesDeleteIt,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GetDetailScreen()));
                        },
                        backgroundColor: ColorUtils.red,
                        textColor: ColorUtils.white,
                        // width: 40.w,
                        textStyle: FontTextStyle.GorditaW5S10primarycolor,
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.w,
                ),
                Text(
                  VariableUtils.cancel,
                  style: FontTextStyle.GorditaW5S10darkBlack.copyWith(
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 5.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
