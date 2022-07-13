import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/createnewjob/create_job1_screen.dart';

import '../Dashboard/Message/message_list_screen.dart';
import '../Dashboard/Myjob/my_job_screen.dart';

class CustomBottomNavigationScreen extends StatefulWidget {
  const CustomBottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationScreen> createState() =>
      _CustomBottomNavigationScreenState();
}

class _CustomBottomNavigationScreenState
    extends State<CustomBottomNavigationScreen> {
  int _selectedIndex = 0;
  int isSelected = 0;
  final List = [
    MyJobScreen(),
    MessageListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: List[_selectedIndex],
      bottomNavigationBar: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
              height: 23.w,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorUtils.aliceBlue,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ImageUtils.bottomImage))),
              child: Padding(
                padding: EdgeInsets.only(top: 4.w, left: 14.w, right: 14.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                          isSelected = 0;
                        });
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            ImageUtils.myJobIcon,
                            height: 5.9.w,
                            color: isSelected == 0
                                ? ColorUtils.primaryColor
                                : ColorUtils.grey,
                          ),
                          SizedBox(
                            height: 1.w,
                          ),
                          Text(
                            "My Job",
                            style: isSelected == 0
                                ? FontTextStyle.GorditaW5S10white
                                : FontTextStyle.GorditaW5S10grey,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                          isSelected = 1;
                        });
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            ImageUtils.messageIcon,
                            height: 5.9.w,
                            color: isSelected == 1
                                ? ColorUtils.primaryColor
                                : ColorUtils.grey,
                          ),
                          SizedBox(
                            height: 1.w,
                          ),
                          Text(
                            VariableUtils.message,
                            style: isSelected == 1
                                ? FontTextStyle.GorditaW5S10white
                                : FontTextStyle.GorditaW5S10grey,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              left: 42.w,
              right: 42.w,
              bottom: 12.w,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateJob1Screen()));
                },
                child: Container(
                  padding: EdgeInsets.only(
                      left: 2.w, right: 2.w, top: 3.w, bottom: 3.w),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: ColorUtils.primaryColor.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 8),
                    ),
                  ], shape: BoxShape.circle, color: ColorUtils.primaryColor),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 10.w,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
