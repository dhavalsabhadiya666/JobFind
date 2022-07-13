import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:roller_list/roller_list.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/Dashboard/Myjob/find_driver_screen.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/enum_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../auth/widget/custom_text_form_field.dart';

class EditJob3Screen extends StatefulWidget {
  const EditJob3Screen({Key? key}) : super(key: key);

  @override
  State<EditJob3Screen> createState() => _EditJob3ScreenState();
}

class _EditJob3ScreenState extends State<EditJob3Screen> {
  TextEditingController _itemdetails = new TextEditingController();
  TextEditingController _quality = new TextEditingController();

  static const MONTHS = {
    "lneght1": '71”',
    "lneght2": '72”',
    "lneght3": '73”',
    "lneght4": '74”',
    "lneght5": '75”',
    "lneght6": '76”',
    "lneght7": '77”',
    "lneght8": '78”',
    "lneght10": '79”',
    "lneght11": '80”',
    "lneght12": '81”',
    "lneght13": '72”'
  };
  String selectedMonth = '';

  void _changeMonths(int value) {
    setState(() {
      selectedMonth = MONTHS.values.toList()[value];
    });
  }

  final List<Widget> months = MONTHS.values
      .map((month) => Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              month.toString(),
              textScaleFactor: 1.3,
              textAlign: TextAlign.center,
              style: FontTextStyle.GorditaW5S25darkBlack,
            ),
          ))
      .toList();
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorUtils.white,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(26.w),
              child: Column(
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    titleName: VariableUtils.editJob,
                    // otherIcon: ImageUtils.backIcon,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: LinearPercentIndicator(
                          width: 50.w,
                          barRadius: Radius.circular(50),
                          // animation: true,
                          lineHeight: 1.w,
                          // animationDuration: 2500,
                          percent: 100 / 100,
                          backgroundColor: ColorUtils.aliceBlue,
                          linearStrokeCap: LinearStrokeCap.round,
                          progressColor: ColorUtils.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
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
                                  height: 3.w,
                                ),
                                padding: EdgeInsets.all(2.w),
                              ),
                              Text(VariableUtils.youDontWantToGoWithInsurance,
                                  style: FontTextStyle.GorditaW5S10white),
                              SvgPicture.asset(
                                ImageUtils.insuranceIcon,
                                height: 7.w,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(10),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            VariableUtils.createJob3Title,
                            style: FontTextStyle.GorditaW7S14darkBlack,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Container(
                            height: 16.w,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(category.length, (index) {
                                return Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selected = index;
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(4.w),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorUtils.grey),
                                            borderRadius:
                                                BorderRadius.circular(2.w),
                                            color: selected == index
                                                ? ColorUtils.darkBlack
                                                : ColorUtils.white),
                                        child: Text(
                                          category[index]["name"],
                                          style: selected == index
                                              ? FontTextStyle
                                                  .GorditaW5S10primarycolor
                                              : FontTextStyle
                                                  .GorditaW5S10lightBlack,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ),
                          SizedBox(
                            height: 10.w,
                          ),
                          Text(
                            VariableUtils.addFurniture,
                            style: FontTextStyle.GorditaW7S10darkBlack,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Container(
                            //color: Colors.yellow,
                            height: 80.w,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(
                                    children: [
                                      Container(
                                        height: 180.w,
                                        decoration: BoxDecoration(
                                            //color: ColorUtils.red,
                                            borderRadius:
                                                BorderRadius.circular(4.w),
                                            border: Border.all(
                                                color: ColorUtils.grey)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50.w,
                                              width: 80.w,
                                              //width: double.infinity,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                      ImageUtils.sofaTemImage,
                                                    )),
                                                borderRadius:
                                                    BorderRadius.circular(4.w),
                                                //    border: Border.all(color: ColorUtils.grey)
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 2.w,
                                                        right: 2.w,
                                                        left: 2.w),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          // color: Colors.red,
                                                          child: Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  showModalBottomSheet(
                                                                      enableDrag:
                                                                          true,
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return showModelBottom();
                                                                      });
                                                                },
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(2.4
                                                                              .w),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorUtils
                                                                          .white,
                                                                      shape: BoxShape
                                                                          .circle),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    ImageUtils
                                                                        .editIcon,
                                                                    height: 5.w,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 2.w,
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {},
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(2.4
                                                                              .w),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorUtils
                                                                          .white,
                                                                      shape: BoxShape
                                                                          .circle),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    ImageUtils
                                                                        .cameraIcon,
                                                                    height: 5.w,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.4.w),
                                                          decoration:
                                                              BoxDecoration(
                                                                  color:
                                                                      ColorUtils
                                                                          .white,
                                                                  shape: BoxShape
                                                                      .circle),
                                                          child:
                                                              SvgPicture.asset(
                                                            ImageUtils
                                                                .closeIcon,
                                                            height: 5.w,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.w,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "3 Seat Sofa",
                                                    style: FontTextStyle
                                                        .GorditaW7S10darkBlack,
                                                  ),
                                                  SizedBox(
                                                    height: 4.w,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            VariableUtils
                                                                .length,
                                                            style: FontTextStyle
                                                                .GorditaW5S8lightBlack,
                                                          ),
                                                          Text(
                                                            "48”",
                                                            style: FontTextStyle
                                                                .GorditaW5S10darkBlack,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 2.w,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            VariableUtils.width,
                                                            style: FontTextStyle
                                                                .GorditaW5S8lightBlack,
                                                          ),
                                                          Text(
                                                            "12”",
                                                            style: FontTextStyle
                                                                .GorditaW5S10darkBlack,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 2.w,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            VariableUtils
                                                                .height,
                                                            style: FontTextStyle
                                                                .GorditaW5S8lightBlack,
                                                          ),
                                                          Text(
                                                            "36",
                                                            style: FontTextStyle
                                                                .GorditaW5S10darkBlack,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 2.w,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            VariableUtils
                                                                .weight,
                                                            style: FontTextStyle
                                                                .GorditaW5S8lightBlack,
                                                          ),
                                                          Text(
                                                            "60LBS",
                                                            style: FontTextStyle
                                                                .GorditaW5S10darkBlack,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 2.w,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            VariableUtils
                                                                .quantity,
                                                            style: FontTextStyle
                                                                .GorditaW5S8lightBlack,
                                                          ),
                                                          Text(
                                                            "1",
                                                            style: FontTextStyle
                                                                .GorditaW5S10darkBlack,
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      )
                                    ],
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 10.w,
                          ),
                          Center(
                            child: CustomButton(
                              width: 30.w,
                              title: VariableUtils.save,
                              backgroundColor: ColorUtils.primaryColor,
                              textColor: ColorUtils.darkBlack,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FindDriverScreen()));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10.w,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showModelBottom() {
    return Container(
      height: 170.w,
      color: ColorUtils.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.w,
              ),
              Text(
                VariableUtils.addFurnitureDetailsImages,
                style: FontTextStyle.GorditaW7S12darkBlack,
              ),
              SizedBox(
                height: 5.w,
              ),
              Image.asset(
                ImageUtils.sofaTemImage,
                //,
              ),
              SizedBox(
                height: 5.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 3,
                      child: CustomTextFormField(
                        fieldController: _itemdetails,
                        fieldName: VariableUtils.furnitureName,
                      )),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                      child: CustomTextFormField(
                    fieldController: _quality,
                    fieldName: VariableUtils.quantity,
                  ))
                ],
              ),
              //
              DefaultTabController(
                  length: 4,
                  initialIndex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: TabBar(
                          labelColor: ColorUtils.darkBlack,
                          unselectedLabelColor: ColorUtils.grey,
                          indicatorColor: ColorUtils.primaryColor,
                          tabs: [
                            Tab(text: VariableUtils.length),
                            Tab(text: VariableUtils.width),
                            Tab(text: VariableUtils.height),
                            Tab(text: VariableUtils.weight),
                          ],
                        ),
                      ),
                      Container(
                        height: 50.w,
                        width: double.infinity,
                        child: TabBarView(
                          children: [
                            RollerList(
                              items: months,
                              onSelectedIndexChanged: _changeMonths,
                              initialIndex: 1,
                            ),
                            RollerList(
                              items: months,
                              onSelectedIndexChanged: _changeMonths,
                              initialIndex: 1,
                            ),
                            RollerList(
                              items: months,
                              onSelectedIndexChanged: _changeMonths,
                              initialIndex: 1,
                            ),
                            RollerList(
                              items: months,
                              onSelectedIndexChanged: _changeMonths,
                              initialIndex: 1,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                      CustomButton(
                        width: double.infinity,
                        title: VariableUtils.done,
                        backgroundColor: ColorUtils.darkBlack,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
