import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';

class CustomAppBar extends StatefulWidget {
  final VoidCallback? backOnTap;
  final String? backIcon;
  final String? locationIcon;
  final String? titleName;
  final String? authName;
  final VoidCallback? authOnTap;
  const CustomAppBar(
      {Key? key,
      this.backOnTap,
      this.backIcon,
      this.locationIcon,
      this.titleName,
      this.authName,
      this.authOnTap})
      : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60.w,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: widget.backOnTap ?? null,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 3.w, top: 3.w, right: 2.w),
                          //color: ColorUtils.red,
                          child: SvgPicture.asset(
                            widget.backIcon ?? '',
                            height: 4.5.w,
                            color: ColorUtils.black,
                          ),
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.w),
                      child: SvgPicture.asset(
                        widget.locationIcon ?? '',
                        //ImageUtils.locationIcon,
                        height: 5.w,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.w),
                      child: Text(
                        // VariableUtils.title,
                        widget.titleName ?? '',
                        style: FontTextStyle.gilroyW7S147darkBlack,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: widget.authOnTap ?? null,
                child: Container(
                    // width: 20.w,
                    // color: Colors.red,
                    child: widget.authName == null
                        ? SizedBox()
                        : Padding(
                            padding: EdgeInsets.only(top: 3.w, right: 3.w),
                            child: Container(
                              padding: EdgeInsets.all(1.7.w),
                              decoration: BoxDecoration(
                                  color: ColorUtils.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                widget.authName ?? '',
                                style: FontTextStyle.GorditaW5S10primarycolor,
                              ),
                            ),
                          )),
              )
            ],
          )
        ],
      ),
    );
  }
}
