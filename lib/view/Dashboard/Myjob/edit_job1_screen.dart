import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../createnewjob/Widgets/custom_formfield.dart';

import '../../widgets/custom_round_button.dart';
import 'edit_job2_screen.dart';

class EditJob1Screen extends StatefulWidget {
  const EditJob1Screen({Key? key}) : super(key: key);

  @override
  State<EditJob1Screen> createState() => _EditJob1ScreenState();
}

class _EditJob1ScreenState extends State<EditJob1Screen> {
  TextEditingController jobTitleController = new TextEditingController();
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
                  //autofocus: false,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditJob2Screen()));
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
                            //animation: true,
                            lineHeight: 1.w,
                            //   animationDuration: 2500,
                            percent: 25 / 100,
                            barRadius: Radius.circular(50),
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
                            VariableUtils.createJob1Title,
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          CustomFormField(
                            fieldController: jobTitleController,
                            hint: VariableUtils.pickupACarBikeFromFillmore,
                            height: 30.w,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
