import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/constants/app_theme.dart';

import 'package:provider/provider.dart';

class AppearanceScreen extends StatefulWidget {
  const AppearanceScreen({super.key});

  @override
  State<AppearanceScreen> createState() => _AppearanceScreenState();
}

class _AppearanceScreenState extends State<AppearanceScreen> {
  bool lights = false;
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ModelTheme>(context);
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return Scaffold(
        backgroundColor: theme(_).colorScheme.background,
        appBar: AppBar(
          title: Row(
            children: [
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
              Text(
                "Appearance",
                style: GoogleFonts.poppins(color: Color(0xff8398F3)),
              ),
              const Spacer(),
            ],
          ),
          automaticallyImplyLeading: false,
          backgroundColor: theme(_).colorScheme.background,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              width: 360.r,
              height: 60.h,
              decoration: BoxDecoration(
                color: theme(_).colorScheme.onBackground,
              ),
              child: Row(
                children: [
                  SizedBox(width: 10.w),
                  Switch(
                    activeColor: Color(0xff8398F3),
                    value: themeChanger.isDark ? true : false,
                    onChanged: (bool value) {
                      setState(() {
                        lights = value;
                        themeNotifier.isDark
                            ? themeNotifier.isDark = false
                            : themeNotifier.isDark = true;

                        //                 value == false?
                        //                 value: ThemeMode.light,
                        // groupValue: themeChanger.themeMode,
                        // onChanged: themeChanger.SetTheme,
                        //                 :
                        //                    ThemeMode.dark
                        //         groupValue: themeChanger.themeMode,
                        //         onChanged: themeChanger.SetTheme,
                        print(value);
                      });
                    },
                  ),
                  InkWell(
                    onTap: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                    child: Text(
                      "Dark mode",
                      style: GoogleFonts.poppins(
                          color: Color(0xff8398F3),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            // RadioListTile(
            //     value: ThemeMode.dark,
            //     groupValue: themeChanger.themeMode,
            //     onChanged: themeChanger.SetTheme),
            // RadioListTile(
            //     value: ThemeMode.light,
            //     groupValue: themeChanger.themeMode,
            //     onChanged: themeChanger.SetTheme),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(width: 20.w),
                Text(
                  "Color scheme",
                  style: GoogleFonts.poppins(
                      color: Color(0xff8398F3),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  // _isSelected = !_isSelected;
                  themeChanger.isDark
                      ? themeChanger.setDarkColorScheme(1)
                      : themeChanger.setColorScheme(1);
                });
              },
              child: Container(
                width: 340.r,
                height: 60.h,
                decoration: BoxDecoration(
                    // ignore: unrelated_type_equality_checks

                    color: theme(_).colorScheme.onBackground,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r))),
                child: Center(
                    child: Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10.w),
                        const CircleAvatar(
                          backgroundColor: Color(0xff324472),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xff8398F3),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xffE36A79),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xffFA9384),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 180.w,
                        ),
                        Icon(
                          themeChanger.isDark
                              ? themeChanger.selecteDarkScheme == 1
                                  ? Icons.check
                                  : null
                              : themeChanger.selecteLightScheme == 1
                                  ? Icons.check
                                  : null,
                          color: Color(0xff8398F3),
                        )
                      ],
                    )
                  ],
                )),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  // _isSelected = !_isSelected;
                  themeChanger.isDark
                      ? themeChanger.setDarkColorScheme(2)
                      : themeChanger.setColorScheme(2);
                });
              },
              child: Container(
                width: 340.r,
                height: 60.h,
                decoration: BoxDecoration(
                  color: theme(_).colorScheme.onBackground,
                ),
                child: Center(
                    child: Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10.w),
                        const CircleAvatar(
                          backgroundColor: Color(0xff274D5A),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xff45988E),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xffD46C4F),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xffFAAC6A),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 180.w,
                        ),
                        Icon(
                          themeChanger.isDark
                              ? themeChanger.selecteDarkScheme == 2
                                  ? Icons.check
                                  : null
                              : themeChanger.selecteLightScheme == 2
                                  ? Icons.check
                                  : null,
                          color: Color(0xff8398F3),
                        )
                      ],
                    )
                  ],
                )),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  // _isSelected = !_isSelected;
                  themeChanger.isDark
                      ? themeChanger.setDarkColorScheme(3)
                      : themeChanger.setColorScheme(3);
                });
              },
              child: Container(
                width: 340.r,
                height: 60.h,
                decoration: BoxDecoration(
                    color: theme(_).colorScheme.onBackground,
                    borderRadius: new BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r))),
                child: Center(
                    child: Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10.w),
                        const CircleAvatar(
                          backgroundColor: Color(0xff4D4471),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xff8D7FC7),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xffC84ACB),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color(0xff908EFD),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 180.w,
                        ),
                        Icon(
                          themeChanger.isDark
                              ? themeChanger.selecteDarkScheme == 3
                                  ? Icons.check
                                  : null
                              : themeChanger.selecteLightScheme == 3
                                  ? Icons.check
                                  : null,
                          color: Color(0xff8398F3),
                        )
                      ],
                    )
                  ],
                )),
              ),
            ),
          ],
        ),
      );
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
