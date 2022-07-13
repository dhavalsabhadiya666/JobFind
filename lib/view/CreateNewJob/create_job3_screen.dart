import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:roller_list/roller_list.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/enum_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import 'package:teleport/view/createnewjob/create_job4_screen.dart';

import '../../utils/color_utils.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../auth/widget/custom_text_form_field.dart';

import '../widgets/custom_round_button.dart';

class CreateJob3Screen extends StatefulWidget {
  const CreateJob3Screen({Key? key}) : super(key: key);

  @override
  State<CreateJob3Screen> createState() => _CreateJob3ScreenState();
}

class _CreateJob3ScreenState extends State<CreateJob3Screen> {
  TextEditingController _furnitureNameController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  int selected = 0;

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

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorUtils.white,
        child: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(27.w),
                child: Column(
                  children: [
                    CustomSettingAppBar(
                      backIcon: ImageUtils.backIcon,
                      backOnTap: () {
                        Navigator.pop(context);
                      },
                      titleName: VariableUtils.createJob,
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
                            percent: 75 / 100,
                            backgroundColor: ColorUtils.aliceBlue,
                            linearStrokeCap: LinearStrokeCap.round,
                            progressColor: ColorUtils.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                )),
            backgroundColor: ColorUtils.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            VariableUtils.createJob3Title,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Container(
                            // color: Colors.red,
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
                            height: 5.w,
                          ),
                        ],
                      )),
                  Divider(),
                  SizedBox(
                    height: 5.w,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            VariableUtils.addFurniture,
                            style: FontTextStyle.GorditaW5S12darkBlack,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Container(
                            height: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.w),
                                border: Border.all(color: ColorUtils.grey)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50.w,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            ImageUtils.sofaTemImage)),
                                    borderRadius: BorderRadius.circular(4.w),
                                    //    border: Border.all(color: ColorUtils.grey)
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.w, right: 2.w, left: 2.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // color: Colors.red,
                                              child: Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(2.4.w),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              ColorUtils.white,
                                                          shape:
                                                              BoxShape.circle),
                                                      child: SvgPicture.asset(
                                                        ImageUtils.editIcon,
                                                        height: 5.w,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      showDialog(
                                                        // barrierColor:
                                                        //     Colors.black26,
                                                        context: context,
                                                        builder: (context) {
                                                          return CustomAlertDialog();
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(2.4.w),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              ColorUtils.white,
                                                          shape:
                                                              BoxShape.circle),
                                                      child: SvgPicture.asset(
                                                        ImageUtils.cameraIcon,
                                                        height: 5.w,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(2.4.w),
                                              decoration: BoxDecoration(
                                                  color: ColorUtils.white,
                                                  shape: BoxShape.circle),
                                              child: SvgPicture.asset(
                                                ImageUtils.closeIcon,
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "3 Seat Sofa",
                                        style:
                                            FontTextStyle.GorditaW7S12darkBlack,
                                      ),
                                      SizedBox(
                                        height: 4.w,
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
                                                VariableUtils.length,
                                                style: FontTextStyle
                                                    .GorditaW5S10lightBlack,
                                              ),
                                              Text(
                                                "48”",
                                                style: FontTextStyle
                                                    .GorditaW5S12darkBlack,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                VariableUtils.width,
                                                style: FontTextStyle
                                                    .GorditaW5S10lightBlack,
                                              ),
                                              Text(
                                                "12”",
                                                style: FontTextStyle
                                                    .GorditaW5S12darkBlack,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                VariableUtils.weight,
                                                style: FontTextStyle
                                                    .GorditaW5S10lightBlack,
                                              ),
                                              Text(
                                                "20LBS",
                                                style: FontTextStyle
                                                    .GorditaW5S12darkBlack,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                VariableUtils.quantity,
                                                style: FontTextStyle
                                                    .GorditaW5S10lightBlack,
                                              ),
                                              Text(
                                                "1",
                                                style: FontTextStyle
                                                    .GorditaW5S12darkBlack,
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
                            height: 5.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            //height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: ColorUtils.primaryLight,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      ImageUtils.insureBackgroundImage)),
                              borderRadius: BorderRadius.circular(4.w),
                              //    border: Border.all(color: ColorUtils.grey)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // color: Colors.red,
                                  // child: SvgPicture.asset(
                                  //   ImageUtils.insureIcon,
                                  //   height: 60,
                                  // ),
                                  child: Image.asset(
                                    ImageUtils.insureIcon,
                                    scale: 2.3.w,
                                  ),
                                ),
                                Container(
                                    //color: Colors.blue,
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      VariableUtils.allowPermissionTitle,
                                      style:
                                          FontTextStyle.GorditaW9S14lightBlack,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: VariableUtils.insure,
                                          style: FontTextStyle
                                              .GorditaW9S14darkBlack,
                                          children: [
                                            TextSpan(
                                              text: VariableUtils.yourItem,
                                              style: FontTextStyle
                                                  .GorditaW9S14lightBlack,
                                            ),
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 2.w,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 4.w,
                                              bottom: 3.w,
                                              right: 4.w,
                                              top: 3.w),
                                          decoration: BoxDecoration(
                                            color: ColorUtils.darkBlack,
                                            borderRadius:
                                                BorderRadius.circular(2.w),
                                          ),
                                          child: Text(
                                            VariableUtils.yesOfCourse,
                                            style: FontTextStyle
                                                .GorditaW5S10primarycolor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(2.w),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorUtils.darkBlack),
                                            color: ColorUtils.white,
                                            borderRadius:
                                                BorderRadius.circular(2.w),
                                          ),
                                          child: SvgPicture.asset(
                                            ImageUtils.yesOfCourseIcon,
                                            height: 6.w,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 9.w,
                          ),
                          CustomRoundButton(
                            icon: ImageUtils.forwardIcon,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CreateJob4Screen()));
                            },
                          ),
                          SizedBox(
                            height: 9.w,
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ));
  }

  Widget CustomAlertDialog() {
    return Dialog(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        child: Container(
          padding: EdgeInsets.all(50),
          height: 50.w,
          width: 80.w,
          color: ColorUtils.aliceBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      enableDrag: true,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return showModelBottom();
                      });
                },
                child: Container(
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorUtils.primaryColor),
                  child: SvgPicture.asset(
                    ImageUtils.uploadIcon,
                    color: ColorUtils.darkBlack,
                    height: 4.w,
                  ),
                ),
              ),
              SizedBox(
                height: 3.w,
              ),
              Text(
                VariableUtils.addOtherFurniture,
                style: FontTextStyle.GorditaW5S12lightBlack,
              )
            ],
          ),
        ));
  }

  Widget showModelBottom() {
    return Container(
      height: 170.w,
      color: ColorUtils.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                    top: 4.w, left: 4.w, right: 4.w, bottom: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      VariableUtils.addFurnitureDetailsImages,
                      style: FontTextStyle.GorditaW7S12darkBlack,
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      padding: EdgeInsets.all(80),
                      radius: Radius.circular(18.0),
                      color: ColorUtils.grey,
                      strokeCap: StrokeCap.butt,
                      strokeWidth: 1,
                      dashPattern: [3, 3, 3, 3],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorUtils.aliceBlue),
                            child: SvgPicture.asset(
                              ImageUtils.cameraIcon,
                              color: ColorUtils.lightBlack,
                              height: 7.w,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(4.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorUtils.aliceBlue),
                            child: SvgPicture.asset(
                              ImageUtils.imageIcon,
                              color: ColorUtils.lightBlack,
                              height: 6.5.w,
                            ),
                          ),
                        ],
                      ),
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
                              fieldController: _furnitureNameController,
                              fieldName: VariableUtils.furnitureName,
                            )),
                        SizedBox(
                          width: 2.w,
                        ),
                        Expanded(
                            child: CustomTextFormField(
                          fieldController: _quantityController,
                          fieldName: VariableUtils.quantity,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
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
                          ],
                        ))
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
}
