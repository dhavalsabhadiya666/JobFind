import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/utils/variable_utils.dart';
import 'package:teleport/view/widgets/custom_round_button.dart';

import '../../utils/color_utils.dart';
import '../../utils/font_style_utils.dart';

import '../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import 'Widgets/custom_formfield.dart';
import 'create_job2_screen.dart';

class CreateJob1Screen extends StatefulWidget {
  const CreateJob1Screen({Key? key}) : super(key: key);

  @override
  State<CreateJob1Screen> createState() => _CreateJob1ScreenState();
}

class _CreateJob1ScreenState extends State<CreateJob1Screen> {
  TextEditingController jobTitleController = TextEditingController();

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
            floatingActionButton: Visibility(
                visible: !showFloat,
                child: FloatingActionButton(
                  elevation: 0.0,
                  //autofocus: false,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateJob2Screen()));
                  },
                  child: CustomRoundButton(icon: ImageUtils.forwardIcon),
                )),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            backgroundColor: ColorUtils.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6.w,
                  ),
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
                            hint: VariableUtils.typeTitleHere,
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
