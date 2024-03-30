import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nature_sounds/constants/app_theme.dart';
import 'package:nature_sounds/screens/navigationbar/more/apperience_screen.dart';
import 'package:nature_sounds/screens/navigationbar/more/download_screen.dart';
import 'package:nature_sounds/screens/navigationbar/more/notification_screen.dart';
import 'package:nature_sounds/screens/navigationbar/more/time_alert_screen.dart';

import 'package:nature_sounds/widgits/custom_text_widgit.dart';
import 'package:provider/provider.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  test() {
    setState(() {
      print('abc');
    });
  }

  @override
  Widget build(BuildContext context) {
    test();
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: theme(_).colorScheme.background,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: theme(_).colorScheme.background,
            title: Row(
              children: [
                SizedBox(width: 5.w),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff8398F3),
                  ),
                ),
                const Spacer(),
                CustomText(
                  title: 'More',
                  textColor: const Color(0xff8398F3),
                ),
                const Spacer(),
              ],
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 144.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                        image: AssetImage("assets/premiumbanner.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20.w),
                          Container(
                            width: 100.w,
                            height: 100.h,
                            child: const Image(
                                image: AssetImage('assets/moreScreenPic.png')),
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: 'Lifetime Premium',
                                textColor: const Color(0xffFA9384),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              CustomText(
                                  title: '- No Ads', textColor: Colors.white),
                              CustomText(
                                  title: '- Access all tracks',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.white),
                              CustomText(
                                  title: '- Unlimated sounds',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.white),
                              CustomText(
                                  title: '- Mix your own tracks',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.white),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                CustomText(
                  title: 'Options',
                  fontSize: 14.sp,
                  textColor: const Color(0xff8398F3),
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {
                    Get.to(TimeAlertScreen());
                  },
                  child: Container(
                    height: 60.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                        color: theme(_).colorScheme.onBackground,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r))),
                    child: Row(
                      children: [
                        SizedBox(width: 20.w),
                        const Image(
                            image: AssetImage(
                                'assets/icons/morescreenContIcon.png')),
                        SizedBox(width: 10.w),
                        CustomText(
                          title: 'Timer Alert',
                          textColor: const Color(0xff8398F3),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                InkWell(
                  onTap: () {
                    Get.to(const NotificationScreen());
                  },
                  child: Container(
                    height: 60.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      color: theme(_).colorScheme.onBackground,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20.w),
                        const Image(
                            image: AssetImage(
                                'assets/icons/morescreenContIcon.png')),
                        SizedBox(width: 10.w),
                        CustomText(
                          title: 'Notifications',
                          textColor: const Color(0xff8398F3),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                InkWell(
                  onTap: () {
                    Get.to(const DownloadScreen());
                  },
                  child: Container(
                    height: 60.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      color: theme(_).colorScheme.onBackground,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20.w),
                        const Image(
                            image: AssetImage(
                                'assets/icons/morescreenContIcon.png')),
                        SizedBox(width: 10.w),
                        CustomText(
                          title: 'Download Settings',
                          textColor: const Color(0xff8398F3),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                InkWell(
                  onTap: () {
                    Get.to(const AppearanceScreen());
                  },
                  child: Container(
                    height: 60.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                        color: theme(_).colorScheme.onBackground,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.r),
                            bottomRight: Radius.circular(20.r))),
                    child: Row(
                      children: [
                        SizedBox(width: 20.w),
                        const Image(
                            image: AssetImage(
                                'assets/icons/morescreenContIcon.png')),
                        SizedBox(width: 10.w),
                        CustomText(
                          title: 'Appearance',
                          textColor: const Color(0xff8398F3),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 60.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                      color: theme(_).colorScheme.onBackground,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r))),
                  child: Row(
                    children: [
                      SizedBox(width: 20.w),
                      const Image(
                          image: AssetImage(
                              'assets/icons/morescreenContIcon.png')),
                      SizedBox(width: 10.w),
                      CustomText(
                        title: 'Rate and Review',
                        textColor: const Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  height: 60.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    color: theme(_).colorScheme.onBackground,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20.w),
                      const Image(
                          image: AssetImage(
                              'assets/icons/morescreenContIcon.png')),
                      SizedBox(width: 10.w),
                      CustomText(
                        title: 'Share the app',
                        textColor: const Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  height: 60.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    color: theme(_).colorScheme.onBackground,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20.w),
                      const Image(
                          image: AssetImage(
                              'assets/icons/morescreenContIcon.png')),
                      SizedBox(width: 10.w),
                      CustomText(
                        title: 'Talk to us',
                        textColor: const Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  height: 60.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                      color: theme(_).colorScheme.onBackground,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r))),
                  child: Row(
                    children: [
                      SizedBox(width: 20.w),
                      const Image(
                          image: AssetImage(
                              'assets/icons/morescreenContIcon.png')),
                      SizedBox(width: 10.w),
                      CustomText(
                        title: 'Privacy policy & Terms of use',
                        textColor: const Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                CustomText(
                  title: 'Want a private mood journal app?',
                  fontSize: 14.sp,
                  textColor: const Color(0xff8398F3),
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 144.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/pensivebannerbg.png")),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Padding(
                    padding: EdgeInsets.all(15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.abc,
                              color: Color(0xffFFCC80),
                            ),
                            SizedBox(width: 10.w),
                            CustomText(
                              title: 'Pensive - free private journal',
                              textColor: const Color(0xffFFCC80),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffFFCC80),
                            )
                          ],
                        ),
                        SizedBox(height: 8.h),
                        CustomText(
                            title: 'Bring awareness to your day.',
                            textColor: Colors.white),
                        SizedBox(height: 10.h),
                        CustomText(
                            title:
                                'Daily affirmations, mood & activity tracking, photo journal, gratitude diary and guided meditations.',
                            textColor: Colors.white),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: CustomText(
                    title: 'Version 1.0',
                    textColor: const Color(0xff8398F3),
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ));
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
