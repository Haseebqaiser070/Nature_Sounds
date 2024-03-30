import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nature_sounds/screens/onBoardingScreen/onboarding_screen_one.dart';
import 'package:nature_sounds/widgits/logo_widgit.dart';

import 'onBoardingScreen/PageView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Get.off(const PageViewDemo());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/splashScreen.png'))),
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.only(top: 216.h),
            //   child: Container(
            //     height: 80.h,
            //     width: 80.w,
            //     child: Center(
            //         child: Image(
            //       image: AssetImage("assets/icons/logo.png"),
            //     )),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
