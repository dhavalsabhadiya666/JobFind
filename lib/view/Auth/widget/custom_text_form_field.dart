import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController fieldController;
  final String? fieldName;
  final TextCapitalization? textCapitalization;
  final String? hint;
  final TextInputType? fieldInputType;
  final bool? enabled;
  final Color? bgColor;
  final int? maxLines;
  final int? maxLength;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String?>? onChange;
  final ValueChanged<String?>? onSave;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final double? contentpadding;

  const CustomTextFormField(
      {Key? key,
      this.fieldName,
      this.textCapitalization,
      this.bgColor,
      this.fieldInputType,
      required this.fieldController,
      this.enabled,
      this.maxLines,
      this.maxLength,
      this.validator,
      this.onTap,
      this.onSave,
      this.hint,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText,
      this.contentpadding,
      this.onChange})
      : super(key: key);

  @override
  _CustomInputField_State createState() => _CustomInputField_State();
}

class _CustomInputField_State extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: ColorUtils.red,
        child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(widget.fieldName ?? '',
              style: FontTextStyle.GorditaW5S10darkBlack),
        ),
        SizedBox(
          height: 2.w,
        ),
        Container(
          //color: Colors.red,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.5),
            color: Color(0xffF6F8FA),
          ),

          child: TextFormField(
              style: TextStyle(fontSize: 12.sp),
              controller: widget.fieldController,
              keyboardType: widget.fieldInputType ?? TextInputType.text,
              textInputAction: TextInputAction.next,
              textCapitalization:
                  widget.textCapitalization ?? TextCapitalization.none,
              enabled: widget.enabled ?? true,
              maxLines: widget.maxLines,
              maxLength: widget.maxLength,
              validator: widget.validator ?? null,
              obscureText: widget.obscureText ?? false,
              onTap: widget.onTap ?? null,
              onChanged: widget.onChange ?? null,
              onSaved: widget.onSave ?? null,
              decoration: InputDecoration(
                hintText: widget.hint ?? "",
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffixIcon,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.w, horizontal: 2.w),
                isDense: true,
                border: InputBorder.none,
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(8.0),
                // ),
                // focusedBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(8.0),
                //     borderSide: BorderSide(
                //         width: 1.5, color: ColorUtils.primaryColor)),
                prefixIconConstraints:
                    BoxConstraints(minWidth: 30, maxHeight: 20),
                //  hintStyle: ColorUtils.,
              )),
        ),
      ],
    ));
  }
}
