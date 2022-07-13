import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../utils/color_utils.dart';
import '../../../utils/font_style_utils.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';

class MessageChatScreen extends StatefulWidget {
  const MessageChatScreen({Key? key}) : super(key: key);

  @override
  State<MessageChatScreen> createState() => _MessageChatScreenState();
}

class _MessageChatScreenState extends State<MessageChatScreen> {
  TextEditingController _msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: ColorUtils.darkBlack,
            child: Container(
                height: 20.w,
                color: ColorUtils.darkBlack,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
                    children: [
                      Container(
                          width: 70.w,
                          //color: ColorUtils.red,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.5),
                              color: ColorUtils.darkBlack,
                            ),
                            child: TextFormField(
                                style: TextStyle(fontSize: 12.sp),
                                controller: _msgController,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  hintText: "Write your message here...",
                                  hintStyle:
                                      FontTextStyle.GorditaW5S10white.copyWith(
                                          color: Color(0xb3ffffff)),

                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 5.w, horizontal: 2.w),
                                  isDense: true,
                                  border: InputBorder.none,

                                  //  hintStyle: ColorUtils.,
                                )),
                          )),
                      Container(
                        // color: ColorUtils.white,
                        width: 20.w,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              ImageUtils.imageIcon,
                              height: 6.w,
                              color: Color(0xb3ffffff),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                  color: Color(0x33f6f8fa),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                ImageUtils.msgSendIcon,
                                height: 6.w,
                                color: ColorUtils.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(18.w),
              child: Container(
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
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 3.w, right: 2.w, top: 3.w, bottom: 3.w),
                              //color: ColorUtils.red,
                              child: SvgPicture.asset(
                                ImageUtils.backIcon,
                                height: 4.5.w,
                                color: ColorUtils.black,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 3.w),
                          child: Text(
                            'Tenali Patodo',
                            style: FontTextStyle.GorditaW7S12darkBlack,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.w, right: 3.w),
                          child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.more_horiz,
                                size: 7.w,
                              )),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          VariableUtils.online,
                          style: FontTextStyle.GorditaW5S10primarycolor,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          backgroundColor: ColorUtils.aliceBlue,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.w,
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 3.w,
                                        bottom: 3.w,
                                        left: 6.w,
                                        right: 6.w),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        color: ColorUtils.white),
                                    child: Text(
                                      "Hello",
                                      style:
                                          FontTextStyle.GorditaW5S10darkBlack,
                                    ),
                                  ),
                                  Positioned(
                                      top: 2.5.w,
                                      left: -3.w,
                                      child: CircleAvatar(
                                        radius: 3.w,
                                        backgroundImage: AssetImage(
                                            ImageUtils.profileTemImage),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 2.w,
                              ),
                              Text(
                                "10:45 am",
                                style: FontTextStyle.GorditaW5S8lightBlack,
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 3.w,
                                        bottom: 3.w,
                                        left: 6.w,
                                        right: 6.w),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        color: ColorUtils.white),
                                    child: Text(
                                      "How are you",
                                      style:
                                          FontTextStyle.GorditaW5S10darkBlack,
                                    ),
                                  ),
                                  Positioned(
                                      top: 2.5.w,
                                      left: -3.w,
                                      child: CircleAvatar(
                                        radius: 3.w,
                                        backgroundImage: AssetImage(
                                            ImageUtils.profileTemImage),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 2.w,
                              ),
                              Text(
                                "10:45 am",
                                style: FontTextStyle.GorditaW5S8lightBlack,
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 3.w, bottom: 3.w, left: 6.w, right: 6.w),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorUtils.accent),
                            borderRadius: BorderRadius.circular(50.0),
                            color: ColorUtils.offaccent),
                        child: Text(
                          "13 Sep 2021",
                          style: FontTextStyle.GorditaW7S10darkBlack,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                  top: 3.w, bottom: 3.w, left: 6.w, right: 6.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.w),
                                  color: ColorUtils.accent),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Fine!",
                                    style: FontTextStyle.GorditaW5S10white,
                                  ),
                                  Text(
                                    "What’s your email?",
                                    style: FontTextStyle.GorditaW5S10white,
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 2.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "10:45 am",
                                style: FontTextStyle.GorditaW5S8lightBlack,
                              ),
                              SvgPicture.asset(
                                ImageUtils.visibilityOnIcon,
                                height: 4.w,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 3.w,
                                        bottom: 3.w,
                                        left: 6.w,
                                        right: 6.w),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        color: ColorUtils.white),
                                    child: Text(
                                      "tenalipatodo789@mail.com",
                                      style:
                                          FontTextStyle.GorditaW5S10darkBlack,
                                    ),
                                  ),
                                  Positioned(
                                      top: 2.5.w,
                                      left: -3.w,
                                      child: CircleAvatar(
                                        radius: 3.w,
                                        backgroundImage: AssetImage(
                                            ImageUtils.profileTemImage),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 2.w,
                              ),
                              Text(
                                "10:45 am",
                                style: FontTextStyle.GorditaW5S8lightBlack,
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                  top: 3.w, bottom: 3.w, left: 6.w, right: 6.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.w),
                                  color: ColorUtils.accent),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Thank you!",
                                    style: FontTextStyle.GorditaW5S10white,
                                  ),
                                  Text(
                                    "Good night, tenali",
                                    style: FontTextStyle.GorditaW5S10white,
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 2.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "10:45 am",
                                style: FontTextStyle.GorditaW5S8lightBlack,
                              ),
                              SvgPicture.asset(
                                ImageUtils.visibilityOffIcon,
                                height: 4.w,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          height: 40.w,
                          width: 40.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(ImageUtils.goodsTemImage)),
                              borderRadius: BorderRadius.circular(5.w)),
                          child: Text(""))
                    ],
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
