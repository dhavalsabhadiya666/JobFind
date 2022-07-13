import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import 'find_driver_screen.dart';

class DriverFilterScreen extends StatefulWidget {
  const DriverFilterScreen({Key? key}) : super(key: key);

  @override
  State<DriverFilterScreen> createState() => _DriverFilterScreenState();
}

class _DriverFilterScreenState extends State<DriverFilterScreen> {
  RangeValues values = RangeValues(10, 100);
  int select = 0;
  String selectedoption = 'Only showing Verified Drivers list';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorUtils.white,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(20.w),
              child: Column(
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.backIcon,
                    backOnTap: () {
                      Navigator.pop(context);
                    },
                    titleName: VariableUtils.filterBy,
                    // otherIcon: ImageUtils.backIcon,
                  ),
                  Divider(),
                ],
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Visibility(
            //visible: !showFloat,
            child: Container(
                //color: ColorUtils.red,
                height: 52.w,

                //width: 30.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(color: ColorUtils.skylight),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                activeColor: ColorUtils.primaryColor,
                                value: VariableUtils.verifiedDriversList,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value!.toString();
                                  });
                                },
                              ),
                            ),
                            title: Text(VariableUtils.verifiedDriversList,
                                style: FontTextStyle.GorditaW7S10darkBlack),
                          ),
                          ListTile(
                            leading: Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                activeColor: ColorUtils.primaryColor,
                                value: VariableUtils.favoriteDriversList,
                                groupValue: selectedoption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedoption = value!.toString();
                                  });
                                },
                              ),
                            ),
                            title: Text(
                              VariableUtils.favoriteDriversList,
                              style: FontTextStyle.GorditaW7S10darkBlack,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: CustomButton(
                                    height: 20.w,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FindDriverScreen()));
                                    },
                                    backgroundColor: ColorUtils.darkBlack,
                                    title: VariableUtils.done))
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          VariableUtils.noOfDeliveries,
                          style: FontTextStyle.GorditaW7S12darkBlack,
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: ColorUtils.primaryLight,
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            '10 - 100',
                            style: FontTextStyle.GorditaW5S10darkBlack,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.w,
                    ),
                    RangeSlider(
                        activeColor: ColorUtils.darkBlack,
                        inactiveColor: ColorUtils.white,
                        min: 1,
                        max: 100,
                        values: values,
                        onChanged: (values) {
                          setState(() {
                            values = values;
                          });
                        }),
                    SizedBox(
                      height: 4.w,
                    ),
                    Text(
                      VariableUtils.ratings,
                      style: FontTextStyle.GorditaW7S12darkBlack,
                    ),
                    SizedBox(
                      height: 4.w,
                    ),
                    Container(
                      height: 17.w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  select = index;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(8.00),
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    color: ColorUtils.darkBlack,
                                    borderRadius: BorderRadius.circular(8)),
                                child: SvgPicture.asset(
                                  ImageUtils.starIcon,
                                  height: 7.w,
                                  color: ColorUtils.primaryColor,
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Text(
                      VariableUtils.sortBy,
                      style: FontTextStyle.GorditaW7S12darkBlack,
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          select = 0;
                        });
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              VariableUtils.topRatedDrivers,
                              style:
                                  FontTextStyle.GorditaW5S12darkBlack.copyWith(
                                      color: select == 0
                                          ? ColorUtils.accent
                                          : ColorUtils.darkBlack),
                            ),
                            SvgPicture.asset(ImageUtils.checkIcon,
                                height: 5.w,
                                color: select == 0
                                    ? ColorUtils.accent
                                    : Colors.transparent)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          select = 1;
                        });
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              VariableUtils.mostPopular,
                              style:
                                  FontTextStyle.GorditaW5S12darkBlack.copyWith(
                                      color: select == 1
                                          ? ColorUtils.accent
                                          : ColorUtils.darkBlack),
                            ),
                            SvgPicture.asset(ImageUtils.checkIcon,
                                height: 5.w,
                                color: select == 1
                                    ? ColorUtils.accent
                                    : Colors.transparent)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
