import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../utils/color_utils.dart';
import '../../../../utils/font_style_utils.dart';

class CustomSettingAppBar extends StatefulWidget {
  final VoidCallback? backOnTap;
  final String? backIcon;
  final VoidCallback? otherTap;
  final String? otherIcon;
  final String? titleName;
  const CustomSettingAppBar({
    Key? key,
    this.backOnTap,
    this.backIcon,
    this.titleName,
    this.otherTap,
    this.otherIcon,
  }) : super(key: key);

  @override
  State<CustomSettingAppBar> createState() => _CustomSettingAppBarState();
}

class _CustomSettingAppBarState extends State<CustomSettingAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 3.w),
      color: ColorUtils.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: widget.backOnTap ?? null,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 3.w, right: 2.w, top: 3.w, bottom: 3.w),
                    // color: ColorUtils.red,
                    child: SvgPicture.asset(
                      widget.backIcon ?? '',
                      height: 4.5.w,
                      color: ColorUtils.black,
                    ),
                  )),
              widget.titleName == null
                  ? SizedBox()
                  : Padding(
                      padding: EdgeInsets.only(
                        top: 3.w,
                      ),
                      child: Text(
                        // VariableUtils.title,
                        widget.titleName ?? '',
                        style: FontTextStyle.GorditaW7S12darkBlack,
                      ),
                    ),
              widget.otherIcon == null
                  ? SizedBox()
                  : GestureDetector(
                      onTap: widget.otherTap ?? null,
                      child: Container(
                        padding:
                            EdgeInsets.only(right: 3.w, top: 3.w, bottom: 3.w),
                        // color: ColorUtils.red,
                        child: SvgPicture.asset(
                          widget.otherIcon ?? '',
                          height: 5.w,
                          color: ColorUtils.black,
                        ),
                      )),
            ],
          )
        ],
      ),
    );
  }
}
