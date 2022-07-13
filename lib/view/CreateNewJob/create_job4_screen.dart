import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../../utils/color_utils.dart';
import '../../utils/font_style_utils.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';

import '../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../widgets/custom_round_button.dart';
import 'create_job_termCondition_screen.dart';

class CreateJob4Screen extends StatefulWidget {
  const CreateJob4Screen({Key? key}) : super(key: key);

  @override
  State<CreateJob4Screen> createState() => _CreateJob4ScreenState();
}

class _CreateJob4ScreenState extends State<CreateJob4Screen> {
  bool selected = false;
  String? selectedPickUpDate;
  String? selectedDropOffDate;

  @override
  Widget build(BuildContext context) {
    bool showFloat = MediaQuery.of(context).viewInsets.bottom != 0;
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
                          //animation: true,
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
                  Divider(),
                ],
              )),
          floatingActionButton: Visibility(
            visible: !showFloat,
            child: FloatingActionButton(
              elevation: 0.0,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateJobTermConditionScreen()));
              },
              child: CustomRoundButton(icon: ImageUtils.forwardIcon),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          backgroundColor: ColorUtils.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 7.w,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.scheduleForPickup,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        Text(
                          VariableUtils.selectPickupDateTime,
                          style: FontTextStyle.GorditaW5S10darkBlack,
                        ),
                        SizedBox(
                          height: 3.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(4.w),
                          height: 14.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.5),
                            color: Color(0xffF6F8FA),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedPickUpDate ?? '',
                                style: FontTextStyle.GorditaW7S10darkBlack,
                              ),
                              GestureDetector(
                                onTap: () {
                                  DatePicker.showDateTimePicker(context,
                                      showTitleActions: true,
                                      onChanged: (date) {
                                    String formattedDate = DateFormat(
                                            'MMM dd yyyy, hh:mm a', 'en_US')
                                        .format(date);
                                    setState(() {
                                      selectedPickUpDate = formattedDate;
                                    });
                                    print('formattedDate${formattedDate}');
                                    print('change $date in time zone ' +
                                        date.timeZoneOffset.inHours.toString());
                                  }, onConfirm: (date) {
                                    print('confirm $date');
                                  },
                                      currentTime:
                                          DateTime(2008, 12, 31, 23, 12, 34));
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: ColorUtils.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              ImageUtils.dottedOrIcon,
                              height: 9.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = !selected;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2.w),
                                border: Border.all(
                                    color: selected
                                        ? ColorUtils.primaryColor
                                        : ColorUtils.grey)),
                            padding: EdgeInsets.all(3.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  VariableUtils.asSoonAsPossible,
                                  style: FontTextStyle.GorditaW7S10darkBlack,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.w),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: selected
                                          ? ColorUtils.primaryColor
                                          : ColorUtils.grey),
                                  child: SvgPicture.asset(
                                    ImageUtils.checkIcon,
                                    height: 3.w,
                                    color: ColorUtils.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                      ],
                    )),
                Divider(),
                SizedBox(
                  height: 6.w,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          VariableUtils.scheduleForDropOff,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                        SizedBox(
                          height: 5.w,
                        ),
                        Text(
                          VariableUtils.selectDropOffDateTime,
                          style: FontTextStyle.GorditaW5S10darkBlack,
                        ),
                        SizedBox(
                          height: 3.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(4.w),
                          height: 14.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.5),
                            color: Color(0xffF6F8FA),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedDropOffDate ?? '',
                                style: FontTextStyle.GorditaW7S10darkBlack,
                              ),
                              GestureDetector(
                                onTap: () {
                                  DatePicker.showDateTimePicker(context,
                                      showTitleActions: true,
                                      onChanged: (date) {
                                    String formattedDate = DateFormat(
                                            'MMM dd yyyy, hh:mm a', 'en_US')
                                        .format(date);
                                    setState(() {
                                      selectedDropOffDate = formattedDate;
                                    });
                                    print('formattedDate${formattedDate}');
                                    print('change $date in time zone ' +
                                        date.timeZoneOffset.inHours.toString());
                                  }, onConfirm: (date) {
                                    print('confirm $date');
                                  },
                                      currentTime:
                                          DateTime(2008, 12, 31, 23, 12, 34));
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: ColorUtils.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
