import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/screens/navigationbar/mood/streak.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_theme.dart';

class Add_Mood_Screen extends StatefulWidget {
  const Add_Mood_Screen({Key? key}) : super(key: key);

  @override
  State<Add_Mood_Screen> createState() => _Add_Mood_ScreenState();
}

class _Add_Mood_ScreenState extends State<Add_Mood_Screen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: theme(_).colorScheme.background,
        body: Column(
          children: [
            Container(
              height: 150.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/fvtSlide.png'))),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Image(
                        color: theme(_).colorScheme.background,
                        image: const AssetImage('assets/custompicdesign.png')),
                    Positioned(
                      left: 54.w,
                      right: 54.w,
                      top: 25.h,
                      child: Column(
                        children: [
                          SizedBox(height: 3.h),
                          Text(
                            '0',
                            style: GoogleFonts.poppins(
                                color: const Color(0xffFA9384),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            'Streak',
                            style: GoogleFonts.poppins(
                                color: const Color(0xff8398F3),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  "23 Feb",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, color: Color(0xff8398F3)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 80.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffFA9384),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Center(
                      child: Text(
                    " 0 entries",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Color(0xffFFFCFA)),
                  )),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 77.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff8398F3),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Color(0xffFFFCFA),
                      ),
                      Text(
                        "0 min",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFCFA)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 340.w,
              height: 131,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFCFA),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  const Image(image: AssetImage('assets/icons/emoji10.png')),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text("Tap to record your mood now.",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8398F3))),
                  SizedBox(
                    height: 21.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const Streak_screen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xffFA9384),
                        ),
                        Text("Add",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFA9384),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(width: 280.w),
                InkWell(
                  onTap: () {
                    Get.to(const Streak_screen());
                  },
                  child: Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffFA9384),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: const Center(
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
              ],
            ),
            SizedBox(height: 125.h)
          ],
        ),
      ));
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
