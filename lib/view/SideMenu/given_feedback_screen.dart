import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/createnewjob/Widgets/custom_formfield.dart';

import '../../utils/color_utils.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';

class GivenFeedbackScreen extends StatefulWidget {
  const GivenFeedbackScreen({Key? key}) : super(key: key);

  @override
  State<GivenFeedbackScreen> createState() => _GivenFeedbackScreenState();
}

class _GivenFeedbackScreenState extends State<GivenFeedbackScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController _FeedBackcontroller = TextEditingController();
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(18.w),
              child: Container(
                color: ColorUtils.white,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    appBar(),
                  ],
                ),
              )),
          backgroundColor: ColorUtils.aliceBlue,
          body: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Column(
              children: [
                SizedBox(
                  height: 3.w,
                ),
                ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), //color of shadow
                                  spreadRadius: 3, //spread radius
                                  blurRadius: 5, // blur radius
                                  offset: Offset(0, 3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(1.w),
                            ),
                            child: Column(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
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
                                            BorderRadius.circular(1.w),
                                        color: ColorUtils.white),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 4.w, right: 3.w, left: 3.w),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 5.w,
                                                backgroundImage: AssetImage(
                                                    ImageUtils.profileTemImage),
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Container(
                                                  width: 74.w,
                                                  // color: ColorUtils.red,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 54.w,
                                                        // color: ColorUtils.blue,
                                                        child: Text(
                                                          "Feni Olgano",
                                                          softWrap: true,
                                                          overflow: TextOverflow
                                                              .visible,
                                                          style: FontTextStyle
                                                              .GorditaW7S10darkBlack,
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.w,
                                                                bottom: 2.w,
                                                                right: 4.w,
                                                                left: 4.w),
                                                        decoration: BoxDecoration(
                                                            color: ColorUtils
                                                                .primaryLight,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50)),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              "4.5",
                                                              style: FontTextStyle
                                                                  .GorditaW5S10darkBlack,
                                                            ),
                                                            SizedBox(
                                                              width: 1.w,
                                                            ),
                                                            SvgPicture.asset(
                                                              ImageUtils
                                                                  .starIcon,
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
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3.w),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  VariableUtils.feedBackDes,
                                                  style: FontTextStyle
                                                      .GorditaW5S10darkBlack,
                                                ),
                                                SizedBox(
                                                  height: 2.w,
                                                ),
                                                Text(
                                                  VariableUtils
                                                      .feedBackDateTime,
                                                  style: FontTextStyle
                                                      .GorditaW5S10lightBlack,
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Text(
                                                  VariableUtils.seeFullRatings,
                                                  style: FontTextStyle
                                                          .GorditaW5S10accent
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                      enableDrag: true,
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return moreBottom();
                                                      });
                                                },
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  size: 8.w,
                                                  color: ColorUtils.grey,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2.w,
                                        ),
                                      ],
                                    )),
                                Container(
                                    decoration: BoxDecoration(
                                      color: ColorUtils.aliceBlue,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(1.w),
                                          bottomLeft: Radius.circular(1.w)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(3.w),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            ImageUtils.thankUNextIcon,
                                            height: 4.w,
                                          ),
                                          Text(
                                            VariableUtils.thankYou,
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
                          SizedBox(
                            height: 4.w,
                          )
                        ],
                      );
                    })
              ],
            ),
          )),
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
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      enableDrag: true,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return editBottom();
                      });
                },
                child: Text(
                  VariableUtils.edit,
                  style: FontTextStyle.GorditaW5S12darkBlack,
                ),
              ),
              SizedBox(
                height: 2.w,
              ),
              Text(
                VariableUtils.delete,
                style: FontTextStyle.GorditaW5S12darkBlack.copyWith(
                    color: ColorUtils.red),
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

  Widget editBottom() {
    return Container(
      height: 140.w,
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
              Text(
                VariableUtils.editFeedback,
                style: FontTextStyle.GorditaW7S12darkBlack,
              ),
              SizedBox(
                height: 4.w,
              ),
              Text(VariableUtils.feedBack,
                  style: FontTextStyle.GorditaW5S10darkBlack),
              SizedBox(
                height: 4.w,
              ),
              CustomFormField(
                fieldController: _FeedBackcontroller,
                height: 45.w,
              ),
              SizedBox(
                height: 8.w,
              ),
              TabBar(
                  isScrollable: true,
                  onTap: (value) {
                    // setState(() {
                    //   selected = value;
                    // });
                  },
                  indicatorColor: ColorUtils.primaryColor,
                  labelStyle: FontTextStyle.GorditaW7S10darkBlack,
                  labelColor: ColorUtils.darkBlack,
                  unselectedLabelColor: ColorUtils.lightBlack,
                  labelPadding:
                      EdgeInsets.symmetric(vertical: 2.w, horizontal: 3.w),
                  unselectedLabelStyle: FontTextStyle.GorditaW7S10lightBlack,
                  controller: _tabController,
                  tabs: [
                    Text(
                      VariableUtils.overAllExperience,
                    ),
                    Text(
                      VariableUtils.driverBehavior,
                    ),
                    Text(
                      VariableUtils.driving,
                    )
                  ]),
              Container(
                height: 60.w,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5.w,
                        ),
                        RatingBarIndicator(
                          rating: 2.75,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.w),
                                color: ColorUtils.primaryColor),
                            padding: EdgeInsets.all(130.w),
                            margin: EdgeInsets.symmetric(horizontal: 50.w),
                            child: Icon(
                              Icons.star,
                              size: 300.w,
                              color: ColorUtils.darkBlack,
                            ),
                          ),
                          itemCount: 5,
                          itemSize: 65,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        CustomButton(
                          width: 40.w,
                          title: VariableUtils.update,
                          backgroundColor: ColorUtils.primaryColor,
                          textColor: ColorUtils.darkBlack,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5.w,
                        ),
                        RatingBarIndicator(
                          rating: 2.75,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.w),
                                color: ColorUtils.primaryColor),
                            padding: EdgeInsets.all(130.w),
                            margin: EdgeInsets.symmetric(horizontal: 50.w),
                            child: Icon(
                              Icons.star,
                              size: 300.w,
                              color: ColorUtils.darkBlack,
                            ),
                          ),
                          itemCount: 5,
                          itemSize: 65,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        CustomButton(
                          width: 40.w,
                          title: VariableUtils.update,
                          backgroundColor: ColorUtils.primaryColor,
                          textColor: ColorUtils.darkBlack,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5.w,
                        ),
                        RatingBarIndicator(
                          rating: 2.75,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.w),
                                color: ColorUtils.primaryColor),
                            padding: EdgeInsets.all(130.w),
                            margin: EdgeInsets.symmetric(horizontal: 50.w),
                            child: Icon(
                              Icons.star,
                              size: 300.w,
                              color: ColorUtils.darkBlack,
                            ),
                          ),
                          itemCount: 5,
                          itemSize: 65,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        CustomButton(
                          width: 40.w,
                          title: VariableUtils.update,
                          backgroundColor: ColorUtils.primaryColor,
                          textColor: ColorUtils.darkBlack,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
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

  Widget appBar() {
    return Container(
      //  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
      color: ColorUtils.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                padding: EdgeInsets.only(top: 3.w),
                child: Text(
                  VariableUtils.givenFeedbackTitle,
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
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                enableDrag: true,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return sortListBottom();
                                });
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
          // SizedBox(
          //   height: 2.w,
          // ),
        ],
      ),
    );
  }
}
