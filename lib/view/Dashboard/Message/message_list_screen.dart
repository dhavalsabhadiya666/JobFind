import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:teleport/utils/color_utils.dart';
import 'package:teleport/utils/enum_utils.dart';
import 'package:teleport/utils/font_style_utils.dart';

import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';

import '../../SideMenu/Setting/widgets/custom_setting_appbar.dart';
import '../../sideMenu/widgets/custom_drawer_screen.dart';
import 'message_chat_screen.dart';

class MessageListScreen extends StatefulWidget {
  const MessageListScreen({Key? key}) : super(key: key);

  @override
  State<MessageListScreen> createState() => _MessageListScreenState();
}

class _MessageListScreenState extends State<MessageListScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(18.w),
              child: Column(
                children: [
                  CustomSettingAppBar(
                    backIcon: ImageUtils.menuIcon,
                    backOnTap: () {
                      _scaffoldkey.currentState!.openDrawer();
                    },
                    titleName: VariableUtils.message,
                    otherIcon: ImageUtils.searchIcon,
                    otherTap: () {},
                  ),
                ],
              )),
          drawer: CustomDrawerScreen(),
          key: _scaffoldkey,
          backgroundColor: ColorUtils.aliceBlue,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: List.generate(message.length, (index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MessageChatScreen()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                  color: ColorUtils.white,
                                  borderRadius: BorderRadius.circular(2.w),
                                  border: Border.all(
                                      color: ColorUtils.grey, width: 0)),
                              child: Row(
                                children: [
                                  Container(
                                    //color: Colors.red,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          message[index]['profileImg']),
                                      radius: 6.w,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Container(
                                    width: 68.w,
                                    //  color: ColorUtils.primaryColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // color: ColorUtils.red,
                                          width: 50.w,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                message[index]['name'],
                                                softWrap: true,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: FontTextStyle
                                                    .GorditaW7S10darkBlack,
                                              ),
                                              Text(
                                                message[index]['msg'],
                                                style: FontTextStyle
                                                    .GorditaW5S8lightBlack,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // color: ColorUtils.red,
                                          width: 18.w,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                message[index]['time'],
                                                style: FontTextStyle
                                                    .GorditaW4S8offBlack,
                                              ),
                                              message[index]['notification'] ==
                                                      ""
                                                  ? SizedBox()
                                                  : Container(
                                                      padding:
                                                          EdgeInsets.all(1.4.w),
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: ColorUtils
                                                              .accent),
                                                      child: Text(
                                                        message[index]
                                                            ['notification'],
                                                        style: FontTextStyle
                                                            .GorditaW5S8white,
                                                      ),
                                                    )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.w,
                          )
                        ],
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
