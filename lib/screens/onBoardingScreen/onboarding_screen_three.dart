import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/screens/app_open_splash_screen.dart';

import '../../widgits/custom_text_widgit.dart';
import '../../widgits/logo_widgit.dart';
import 'onboarding_screen_two.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFAEDE0),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: LogoContainer(
                ht: 50.h,
                wt: 50.w,
              ),
            ),
            SizedBox(height: 30.h),
            const Image(image: AssetImage('assets/onboardincThree.png')),
            SizedBox(height: 20.h),
            Text(
              'Mix & match your own sounds',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: const Color(0xff324472),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Combine various sounds and create tracks \n which resonate with you. Create your own \n calming sound collection.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.9.h,
                color: const Color(0xff8398F3),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5.h,
                  width: 5.w,
                  decoration: BoxDecoration(
                      color: Color(0xff8398F3),
                      borderRadius: BorderRadius.circular(5.r)),
                ),
                SizedBox(width: 8.w),
                Container(
                  height: 5.h,
                  width: 5.w,
                  decoration: BoxDecoration(
                      color: Color(0xff8398F3),
                      borderRadius: BorderRadius.circular(5.r)),
                ),
                SizedBox(width: 4.w),
                Container(
                  height: 5.h,
                  width: 13.w,
                  decoration: BoxDecoration(
                      color: Color(0xff324472),
                      borderRadius: BorderRadius.circular(5.r)),
                ),
              ],
            ),
            SizedBox(height: 193.h),
            InkWell(
              onTap: () {
                Get.to(const AppOpenSplashScreen());
              },
              child: Container(
                height: 60.h,
                width: 340.w,
                decoration: BoxDecoration(
                    color: const Color(0xff8398F3),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Center(
                  child: CustomText(
                    title: 'Next',
                    textColor: Colors.white,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    ));
  }
}
