import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/font_style_utils.dart';
import 'package:teleport/utils/image_utils.dart';
import 'package:teleport/view/AllowPermission/widget/custom_button.dart';
import '../../../utils/color_utils.dart';
import '../../../utils/enum_utils.dart';
import '../../../utils/variable_utils.dart';
import '../Message/message_list_screen.dart';
import 'driver_profile_screen.dart';
import 'edit_job1_screen.dart';
import 'hire_job_screen.dart';

class PickupDetailsScreen extends StatefulWidget {
  const PickupDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PickupDetailsScreen> createState() => _PickupDetailsScreenState();
}

class _PickupDetailsScreenState extends State<PickupDetailsScreen> {
  List _list = ['All', 'Furnitures', 'Clothes', 'Electronics'];
  int select = 0;
  int selected = 0;
  CarouselController buttonCarouselController = CarouselController();

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // color: ColorUtils.red,
                          padding: EdgeInsets.only(
                              left: 3.w, right: 2.w, top: 3.w, bottom: 3.w),
                          child: InkWell(
                            child: SvgPicture.asset(
                              ImageUtils.backIcon,
                              height: 5.w,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.w, right: 3.w),
                          child: Row(
                            children: [
                              Text(
                                VariableUtils.open,
                                style: FontTextStyle.GorditaW5S12darkBlack
                                    .copyWith(color: ColorUtils.orange),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EditJob1Screen()));
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 4.w,
                                      right: 4.w,
                                      top: 2.w,
                                      bottom: 2.w),
                                  decoration: BoxDecoration(
                                      color: ColorUtils.black,
                                      borderRadius: BorderRadius.circular(2.w)),
                                  child: Text(
                                    VariableUtils.edit,
                                    style: FontTextStyle.GorditaW5S12darkBlack
                                        .copyWith(color: ColorUtils.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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
                          VariableUtils.pickupACarBikeFrom,
                          style: FontTextStyle.GorditaW7S14darkBlack,
                        ),
                        Row(
                          children: [
                            Text(
                              VariableUtils.fillmore,
                              style: FontTextStyle.GorditaW7S14darkBlack,
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            SvgPicture.asset(
                              ImageUtils.fillMoreIcon,
                              height: 6.w,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Posted on 23 Jan, 23:10',
                              style: FontTextStyle.GorditaW5S10lightBlack,
                            ),
                            Row(
                              children: [
                                Text(
                                  "12.5",
                                  style: FontTextStyle.GorditaW5S10darkBlack,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Text(
                                  VariableUtils.miles,
                                  style: FontTextStyle.GorditaW5S10lightBlack,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 4.w,
                  ),
                  Container(
                    height: 16.w,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(_list.length, (index) {
                        return Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(4.w),
                                decoration: BoxDecoration(
                                    border: Border.all(color: ColorUtils.grey),
                                    borderRadius: BorderRadius.circular(2.w),
                                    color: selected == index
                                        ? ColorUtils.darkBlack
                                        : ColorUtils.white),
                                child: Text(
                                  _list[index],
                                  style: selected == index
                                      ? FontTextStyle.GorditaW5S10primarycolor
                                      : FontTextStyle.GorditaW5S10lightBlack,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 7.w,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 50.w,
                      autoPlay: true,
                    ),
                    items: [
                      ImageUtils.sofaTemImage,
                      ImageUtils.sofaTemImage,
                      ImageUtils.sofaTemImage,
                      ImageUtils.sofaTemImage,
                      ImageUtils.sofaTemImage,
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              // width: 400.w,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(i)),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 3.w, right: 3.w),
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 3.w,
                                              bottom: 2.w,
                                              top: 2.w,
                                              right: 3.w),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2.w),
                                            color: Color(0x80000000),
                                          ),
                                          child: Text(
                                            "2/5",
                                            style:
                                                FontTextStyle.GorditaW5S10white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 6.w, horizontal: 1.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(3.w),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorUtils.white),
                                          child: SvgPicture.asset(
                                            ImageUtils.backIcon,
                                            color: ColorUtils.black,
                                            height: 3.w,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(3.w),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorUtils.white),
                                          child: SvgPicture.asset(
                                            ImageUtils.backIcon,
                                            color: ColorUtils.black,
                                            height: 3.w,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "3 Seat Sofa",
                                              style: FontTextStyle
                                                      .GorditaW7S12darkBlack
                                                  .copyWith(
                                                      color: ColorUtils.white),
                                            ),
                                            Text(
                                              "See Details",
                                              style: FontTextStyle
                                                      .GorditaW5S10primarycolor
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ));
                        },
                      );
                    }).toList(),
                    carouselController: buttonCarouselController,
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: ColorUtils.black,
                                  radius: 5,
                                ),
                                Container(
                                    height: 20.w,
                                    child: VerticalDivider(color: Colors.grey)),
                                CircleAvatar(
                                  backgroundColor: ColorUtils.primaryColor,
                                  radius: 5,
                                ),
                                Container(
                                    height: 53.w,
                                    child: VerticalDivider(
                                        color: ColorUtils.grey)),
                                Container(
                                    height: 15.w,
                                    child: VerticalDivider(color: Colors.grey)),
                                CircleAvatar(
                                  backgroundColor: Colors.grey.withOpacity(.5),
                                  radius: 5,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    child: LayoutBuilder(
                                      builder: (context, constraint) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Hired Driver",
                                              style: FontTextStyle
                                                      .GorditaW5S10darkBlack
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeightClass.bold),
                                            ),
                                            SizedBox(
                                              height: 2.w,
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 3.w,
                                                  backgroundImage: AssetImage(
                                                      ImageUtils
                                                          .profileTemImage),
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                Text(
                                                  "Keto Holica",
                                                  style: FontTextStyle
                                                      .GorditaW5S10lightBlack,
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 3.w,
                                                      right: 3.w,
                                                      top: 1.w,
                                                      bottom: 1.w),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: Color(0x12012239)),
                                                  child: Text(
                                                    "\$230 Paid",
                                                    style: FontTextStyle
                                                        .GorditaW5S10darkBlack,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 7.w,
                                            ),
                                            Text(
                                              VariableUtils.pickup,
                                              style: FontTextStyle
                                                      .GorditaW5S10darkBlack
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeightClass.bold),
                                            ),
                                            SizedBox(
                                              height: 3.w,
                                            ),
                                            Text(
                                              VariableUtils.pickUpAddress,
                                              style: FontTextStyle
                                                  .GorditaW5S10lightBlack,
                                            ),
                                            SizedBox(
                                              height: 2.w,
                                            ),
                                            Text(
                                              VariableUtils.possible,
                                              style: FontTextStyle
                                                  .GorditaW5S10accent,
                                            ),
                                            SizedBox(
                                              height: 4.w,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              padding: EdgeInsets.all(2.w),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      ColorUtils.primaryLight),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // color: Colors.red,
                                                    child: Text(
                                                      VariableUtils.notes,
                                                      style: FontTextStyle
                                                          .GorditaW7S10darkBlack,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 68.w,
                                                    //  color: Colors.blue,
                                                    child: Text(
                                                      VariableUtils.notesDes,
                                                      softWrap: true,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: FontTextStyle
                                                          .GorditaW5S10lightBlack,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.w,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              padding: EdgeInsets.all(2.w),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Color(0xffF6F8FA)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // color: Colors.red,
                                                    child: Text(
                                                      VariableUtils.contact,
                                                      style: FontTextStyle
                                                          .GorditaW7S10darkBlack,
                                                    ),
                                                  ),
                                                  Container(
                                                      width: 63.w,
                                                      //color: Colors.blue,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                ImageUtils
                                                                    .personIcon,
                                                                color: ColorUtils
                                                                    .lightBlack,
                                                                height: 5.w,
                                                              ),
                                                              Text(
                                                                "Deni Codider",
                                                                style: FontTextStyle
                                                                    .GorditaW5S10lightBlack,
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 2.w,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons.call,
                                                                color: ColorUtils
                                                                    .lightBlack,
                                                              ),
                                                              Text(
                                                                "+1 798-895-7898",
                                                                style: FontTextStyle
                                                                    .GorditaW5S10lightBlack,
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.w,
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          VariableUtils.dropOff,
                                          style: FontTextStyle
                                                  .GorditaW5S10lightBlack
                                              .copyWith(
                                                  fontWeight:
                                                      FontWeightClass.bold),
                                        ),
                                        Text(
                                          VariableUtils.dropOffAddress,
                                          style: FontTextStyle
                                              .GorditaW5S10lightBlack,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.w),
                    child: Text(
                      VariableUtils.yourPickupCode,
                      style: FontTextStyle.GorditaW7S12darkBlack,
                    ),
                  ),
                  DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: TabBar(
                              labelColor: ColorUtils.darkBlack,
                              unselectedLabelColor: ColorUtils.grey,
                              indicatorColor: ColorUtils.primaryColor,
                              tabs: [
                                Tab(text: VariableUtils.QrCode),
                                Tab(text: VariableUtils.code),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Container(
                            height: 100.w,
                            width: double.infinity,
                            child: TabBarView(
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: SvgPicture.asset(
                                          ImageUtils.qrCodeIcon,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.w,
                                      ),
                                      Container(
                                        // height: 15.w,
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: ColorUtils.darkBlack),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  '2',
                                                  style: FontTextStyle
                                                          .GorditaW5S12darkBlack
                                                      .copyWith(
                                                          color:
                                                              ColorUtils.white),
                                                ),
                                                Text(
                                                  VariableUtils.totalBids,
                                                  style: FontTextStyle
                                                          .GorditaW4S10lightBlack
                                                      .copyWith(
                                                          color:
                                                              ColorUtils.white),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15.w,
                                              child: VerticalDivider(
                                                color: Colors.grey,
                                                thickness: 1,
                                                indent: 15,
                                                //   indent: 20,
                                                width: 10,
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  '\$2,500',
                                                  style: FontTextStyle
                                                          .GorditaW5S12darkBlack
                                                      .copyWith(
                                                          color: ColorUtils
                                                              .primaryColor),
                                                ),
                                                Text(
                                                  VariableUtils.lowBidAmount,
                                                  style: FontTextStyle
                                                          .GorditaW4S10lightBlack
                                                      .copyWith(
                                                          color:
                                                              ColorUtils.white),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: ColorUtils.accent),
                                        child: Column(
                                          children: [
                                            Text(
                                              VariableUtils
                                                  .youDontWantToHireFromBelowList,
                                              style: FontTextStyle
                                                  .GorditaW5S10white,
                                            ),
                                            SizedBox(
                                              height: 2.w,
                                            ),
                                            CustomButton(
                                              width: 60.w,
                                              title: VariableUtils
                                                  .letFindMoreDrivers,
                                              onPressed: () {},
                                              backgroundColor: ColorUtils.white,
                                              textStyle: FontTextStyle
                                                  .GorditaW5S10darkBlack,
                                              textColor: ColorUtils.darkBlack,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.w,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.w, vertical: 3.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                VariableUtils.jobBids,
                                                style: FontTextStyle
                                                    .GorditaW7S12darkBlack,
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.w),
                                                    border: Border.all(
                                                        color:
                                                            ColorUtils.grey)),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      VariableUtils.sortBy,
                                                      style: FontTextStyle
                                                          .GorditaW5S10lightBlack,
                                                    ),
                                                    SizedBox(
                                                      width: 1.w,
                                                    ),
                                                    SvgPicture.asset(
                                                      ImageUtils.downArrowIcon,
                                                      height: 2.w,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )),
                                      SizedBox(
                                        height: 3.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3.w, horizontal: 3.w),
                                        child: Container(
                                          padding: EdgeInsets.all(4.w),
                                          margin: EdgeInsets.all(8.00),
                                          decoration: BoxDecoration(
                                              color: ColorUtils.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(
                                                      0.5), //color of shadow
                                                  spreadRadius:
                                                      3, //spread radius
                                                  blurRadius: 5, // blur radius
                                                  offset: Offset(0, 3),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(1.w)),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    //child: Text('PP'),
                                                    backgroundImage: AssetImage(
                                                        ImageUtils
                                                            .profileTemImage),
                                                    radius: 5.w,
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Feni Olgano',
                                                            style: FontTextStyle
                                                                .GorditaW7S12darkBlack,
                                                          ),
                                                          SvgPicture.asset(
                                                            ImageUtils
                                                                .populationIcon,
                                                            height: 4.w,
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            ImageUtils
                                                                .driverListIcon,
                                                            height: 4.w,
                                                            color:
                                                                ColorUtils.grey,
                                                          ),
                                                          SizedBox(
                                                            width: 1.w,
                                                          ),
                                                          Text(
                                                            "Con Air Cargo Van",
                                                            style: FontTextStyle
                                                                .GorditaW4S10lightBlack,
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: ColorUtils
                                                            .lightpink),
                                                    child: SvgPicture.asset(
                                                      ImageUtils.redHeartIcon,
                                                      height: 4.w,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.w,
                                              ),
                                              Divider(),
                                              SizedBox(
                                                height: 3.w,
                                              ),
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '150',
                                                          style: FontTextStyle
                                                              .GorditaW7S10darkBlack,
                                                        ),
                                                        Text(
                                                          VariableUtils
                                                              .totalDeliveries,
                                                          style: FontTextStyle
                                                              .GorditaW5S8lightBlack,
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 15.w,
                                                      child: VerticalDivider(
                                                        color: Colors.grey,
                                                        thickness: 1,
                                                        indent: 15,
                                                        //   indent: 20,
                                                        width: 10,
                                                      ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '\$2,500',
                                                          style: FontTextStyle
                                                              .GorditaW7S10darkBlack,
                                                        ),
                                                        Text(
                                                          VariableUtils
                                                              .bidAmount,
                                                          style: FontTextStyle
                                                              .GorditaW5S8lightBlack,
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 15.w,
                                                      child: VerticalDivider(
                                                        color: Colors.grey,
                                                        thickness: 1,
                                                        indent: 15,
                                                        //   indent: 20,
                                                        width: 10,
                                                      ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '4.3',
                                                              style: FontTextStyle
                                                                  .GorditaW7S10darkBlack,
                                                            ),
                                                            SvgPicture.asset(
                                                              ImageUtils
                                                                  .starIcon,
                                                              height: 4.w,
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '56 Reviews',
                                                              style: FontTextStyle
                                                                  .GorditaW5S8lightBlack,
                                                            ),
                                                            SizedBox(
                                                              width: 2.w,
                                                            ),
                                                            SvgPicture.asset(
                                                              ImageUtils
                                                                  .reviewsIcon,
                                                              height: 3.w,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.w,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomButton(
                                                    textStyle: FontTextStyle
                                                            .GorditaW5S8lightBlack
                                                        .copyWith(
                                                            color: ColorUtils
                                                                .primaryColor),
                                                    title: VariableUtils
                                                        .chatWithDriver,
                                                    backgroundColor:
                                                        ColorUtils.black,
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  MessageListScreen()));
                                                    },
                                                    width: 33.w,
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  CustomButton(
                                                    width: 30.w,
                                                    title:
                                                        VariableUtils.hireNow,
                                                    textStyle: FontTextStyle
                                                            .GorditaW5S8lightBlack
                                                        .copyWith(
                                                            color: ColorUtils
                                                                .darkBlack),
                                                    backgroundColor:
                                                        ColorUtils.primaryColor,
                                                    textColor:
                                                        ColorUtils.darkBlack,
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  HireJobScreen()));
                                                    },
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(4.w),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1.w),
                                                      border: Border.all(
                                                          color:
                                                              ColorUtils.grey),
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageUtils.forwardIcon,
                                                      height: 3.w,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5.w,
                                              ),
                                              InkWell(
                                                child: Center(
                                                    child: Text(
                                                        VariableUtils
                                                            .viewDriverProfile,
                                                        style: FontTextStyle
                                                                .GorditaW5S10lightBlack
                                                            .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ))),
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              DriverProfileScreen()));
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 20.w,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemCount: 7,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Container(
                                              //height: 2.w,
                                              width: 10.w,
                                              //padding: EdgeInsets.all(5),
                                              margin: EdgeInsets.all(5),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.all(10),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.w),
                                                  color: ColorUtils.offaccent,
                                                  border: Border.all(
                                                      color:
                                                          ColorUtils.accent)),
                                            );
                                          }),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            )),
      ),
    );
  }

  Widget appBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.5.w),
      color: ColorUtils.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  ImageUtils.backIcon,
                  height: 4.5.w,
                  color: ColorUtils.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    VariableUtils.open,
                    style: FontTextStyle.GorditaW5S14darkBlack.copyWith(
                        color: ColorUtils.orange),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditJob1Screen()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.w),
                      decoration: BoxDecoration(color: ColorUtils.black),
                      child: Text(
                        VariableUtils.edit,
                        style: FontTextStyle.GorditaW5S12darkBlack.copyWith(
                            color: ColorUtils.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
