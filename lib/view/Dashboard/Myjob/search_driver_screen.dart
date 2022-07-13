import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';

import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';
import '../../auth/widget/custom_text_form_field.dart';

class SearchDriverScreen extends StatefulWidget {
  const SearchDriverScreen({Key? key}) : super(key: key);

  @override
  State<SearchDriverScreen> createState() => _SearchDriverScreenState();
}

class _SearchDriverScreenState extends State<SearchDriverScreen> {
  TextEditingController _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(25.w),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorUtils.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.only(
                    left: 3.w,
                    right: 3.w,
                    bottom: 2.w,
                  ),
                  child: CustomTextFormField(
                    prefixIcon: SvgPicture.asset(
                      ImageUtils.searchIcon,
                      color: ColorUtils.grey,
                      height: 5.w,
                    ),
                    suffixIcon: Image.asset(
                      ImageUtils.removeIcon,
                      scale: 2,
                    ),
                    fieldController: _searchController,
                    hint: VariableUtils.findByDriver,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: ColorUtils.aliceBlue,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
                child: Text(
                  VariableUtils.recentSearch,
                  style: FontTextStyle.GorditaW7S12darkBlack,
                ),
              ),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.w),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.4), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 2, // blur radius
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: ColorUtils.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          ImageUtils.profileTemImage),
                                      radius: 20,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Feni Olgano',
                                              style: FontTextStyle
                                                  .GorditaW7S12darkBlack,
                                            ),
                                            SvgPicture.asset(
                                              ImageUtils.populationIcon,
                                              height: 4.w,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              ImageUtils.driverListIcon,
                                              height: 4.w,
                                              color: ColorUtils.grey,
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              'Con Air Cargo Van',
                                              style: FontTextStyle
                                                  .GorditaW4S10lightBlack,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
