import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/view/Dashboard/Myjob/edit_job3_screen.dart';
import '../../../utils/color_utils.dart';
import '../../../utils/enum_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../AllowPermission/widget/custom_button.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../auth/widget/custom_text_form_field.dart';
import '../../createnewjob/Widgets/custom_formfield.dart';
import '../../widgets/custom_round_button.dart';

class EditJob2Screen extends StatefulWidget {
  const EditJob2Screen({Key? key}) : super(key: key);

  @override
  State<EditJob2Screen> createState() => _EditJob2ScreenState();
}

class _EditJob2ScreenState extends State<EditJob2Screen> {
  TextEditingController howToReachController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController instructionController = TextEditingController();
  TextEditingController dropOffController = TextEditingController();

  String initialValue = '+1';

  @override
  Widget build(BuildContext context) {
    bool showFloat = MediaQuery.of(context).viewInsets.bottom != 0;
    return Container(
        color: ColorUtils.white,
        child: SafeArea(
          child: Scaffold(
            floatingActionButton: Visibility(
                visible: !showFloat,
                child: FloatingActionButton(
                  elevation: 0.0,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditJob3Screen()));
                  },
                  child: CustomRoundButton(icon: ImageUtils.forwardIcon),
                )),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            backgroundColor: ColorUtils.white,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(27.w),
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
                            percent: 66.66 / 100,
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
                            VariableUtils.createJob2Title,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
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
                                    return showModelBottom();
                                  });
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 2.w, right: 2.w, top: 5.w, bottom: 5.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.5),
                                color: Color(0xffF6F8FA),
                              ),
                              // height: widget.height,
                              child: Text(
                                "1 Tillman Pl, San Francisco, CA94108, United States",
                                style: FontTextStyle.GorditaW7S10darkBlack,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    ImageUtils.personIcon,
                                    height: 5.5.w,
                                  ),
                                  Text(
                                    "Deni Codider",
                                    style: FontTextStyle.GorditaW5S8lightBlack,
                                  )
                                ],
                              ),
                              Text(
                                "+1 798-895-7898",
                                style: FontTextStyle.GorditaW5S8lightBlack,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4.w,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorUtils.primaryLight),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // color: Colors.red,
                                  child: Text(
                                    VariableUtils.notes,
                                    style: FontTextStyle.GorditaW7S10darkBlack,
                                  ),
                                ),
                                Container(
                                  width: 76.w,
                                  // color: Colors.blue,
                                  child: Text(
                                    VariableUtils.notesDes,
                                    softWrap: true,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: FontTextStyle.GorditaW5S10lightBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8.w,
                          ),
                        ],
                      )),
                  Divider(),
                  SizedBox(
                    height: 4.w,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            VariableUtils.whereToDropOff,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          CustomFormField(
                            height: 35.w,
                            hint: VariableUtils.dropOffLocation,
                            fieldController: dropOffController,
                          ),
                          SizedBox(
                            height: 2.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    ImageUtils.personIcon,
                                    height: 5.5.w,
                                  ),
                                  Text(
                                    "Deni Codider",
                                    style: FontTextStyle.GorditaW5S8lightBlack,
                                  )
                                ],
                              ),
                              Text(
                                "+1 798-895-7898",
                                style: FontTextStyle.GorditaW5S8lightBlack,
                              )
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
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
                      VariableUtils.pickupLocation,
                      style: FontTextStyle.GorditaW7S12darkBlack,
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(VariableUtils.address,
                            style: FontTextStyle.GorditaW5S10darkBlack),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              ImageUtils.currentLocationIcon,
                              color: ColorUtils.darkBlack,
                              height: 5.5.w,
                            ),
                            Text(
                              VariableUtils.currentLocation,
                              style:
                                  FontTextStyle.GorditaW5S10darkBlack.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    CustomFormField(
                        height: 15.w, fieldController: addressController),
                    SizedBox(
                      height: 6.w,
                    ),
                    CustomTextFormField(
                      fieldName: VariableUtils.howToReach,
                      fieldController: howToReachController,
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            fieldName: VariableUtils.city,
                            fieldController: cityController,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            fieldName: VariableUtils.state,
                            fieldController: stateController,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            fieldName: VariableUtils.country,
                            fieldController: countryController,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            fieldName: VariableUtils.zipCode,
                            fieldController: zipCodeController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    CustomTextFormField(
                      fieldName: VariableUtils.namePhoneNumber,
                      fieldController: nameController,
                      hint: VariableUtils.personName,
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            height: 16.w,
                            width: 31.w,

                            padding: EdgeInsets.symmetric(horizontal: 1.w),
                            decoration: BoxDecoration(
                              color: ColorUtils.aliceBlue,
                              borderRadius: BorderRadius.circular(4.5),
                            ),
                            //margin: EdgeInsets.symmetric(horizontal: 20),
                            child: DropdownButton(
                              // isExpanded: true,
                              iconEnabledColor: ColorUtils.grey,
                              style: TextStyle(
                                  color: ColorUtils.grey, fontSize: 16),
                              dropdownColor: ColorUtils.aliceBlue,
                              focusColor: ColorUtils.grey,
                              elevation: 0,
                              underline: SizedBox(),
                              value: initialValue,
                              icon: Icon(Icons.keyboard_arrow_down),
                              items: country.map((String items) {
                                return DropdownMenuItem(
                                  child: Text(items),
                                  value: items != null ? items : "",
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  initialValue = value!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Expanded(
                            child: CustomFormField(
                          fieldController: phoneNumberController,
                          fieldInputType: TextInputType.number,
                          height: 16.w,
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 6.w,
                    ),
                    Text(
                      VariableUtils.specialInstructionForDriver,
                      style: FontTextStyle.GorditaW5S10darkBlack,
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    CustomFormField(
                      fieldController: instructionController,
                      height: 20.w,
                    ),
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
