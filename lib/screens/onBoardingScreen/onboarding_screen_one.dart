import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../widgits/custom_text_widgit.dart';
import '../../widgits/logo_widgit.dart';
import '../../constants/app_theme.dart';
import 'onboarding_screen_two.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xffFAEDE0),
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
              SizedBox(height: 20.h),
              const Image(image: AssetImage('assets/onboardpicOne.png')),
              Text(
                'Rejuvenate with calming sounds',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: const Color(0xff324472),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Nature sounds, meditation music, healing \n sounds or just music to chill to. Sound can be \n a powerful healing & relaxing agent.',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff8398F3),
                  height: 1.5.h,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5.h,
                    width: 13.w,
                    decoration: BoxDecoration(
                        color: Color(0xff324472),
                        borderRadius: BorderRadius.circular(5.r)),
                  ),
                  SizedBox(width: 4.w),
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
                  )
                ],
              ),
              SizedBox(height: 193.h),
              InkWell(
                onTap: () {
                  Get.to(const OnBoardingScreenTwo());
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
    });
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:nature_sounds/screens/navigationbar/home/app_open_splas_screen2.dart';

// import '../../widgits/logo_widgit.dart';
// import '../app_open_splash_screen.dart';

// class OnBoarding_screen extends StatefulWidget {
//   const OnBoarding_screen({Key? key}) : super(key: key);

//   @override
//   State<OnBoarding_screen> createState() => _OnBoarding_screenState();
// }

// class _OnBoarding_screenState extends State<OnBoarding_screen> {
//   List onBoardingData = [
//     {
//       "image": 'assets/onboardpicOne.png',
//       "title": 'Rejuvenate with calming sounds',
//       "describtion":
//           'Nature sounds, meditation music, healing sounds or just music to chill to. Sound can be a powerful healing & relaxing agent.'
//     },
//     {
//       "image": 'assets/onboardpicTwo.png',
//       "title": 'Keep track of your moods',
//       "describtion":
//           'Assess your mood from 0 - 10 throughout the day. Figure out patterns and use calming sounds to improve your mood.'
//     },
//     {
//       "image": 'assets/onboardincThree.png',
//       "title": 'Mix & match your own sounds',
//       "describtion":
//           'Combine various sounds and create tracks which resonate with you. Create your own calming sound collection.'
//     },
//   ];
//   PageController pageController = PageController();
//   continueMethod() {}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView.builder(
//             scrollDirection: Axis.horizontal,
//             controller: pageController,
//             itemCount: onBoardingData.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   SizedBox(
//                     height: 40.h,
//                   ),
//                   LogoContainer(
//                     ht: 48.h,
//                     wt: 48.w,
//                   ),
//                   SizedBox(
//                     height: 21.h,
//                   ),
//                   Image.asset(onBoardingData[index]['image']),
//                   SizedBox(
//                     height: 11.h,
//                   ),
//                   Text(
//                     onBoardingData[index]['title'],
//                     style: GoogleFonts.poppins(
//                         color: const Color(0xff324472),
//                         fontSize: 14.sp,
//                         fontWeight: FontWeight.w600),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 20.w, right: 20.w),
//                     child: Container(
//                       child: Text(
//                         onBoardingData[index]['describtion'],
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(
//                             fontFamily: "Poppins",
//                             color: const Color(0xff8398F3),
//                             fontSize: 14.sp,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   InkWell(
//                     onTap: () {
//                       Get.to(AppOpenSplashScreen());
//                     },
//                     child: Container(
//                       width: 340.w,
//                       height: 60.h,
//                       decoration: BoxDecoration(
//                           color: Color(0xff8398F3),
//                           borderRadius: BorderRadius.circular(20.r)),
//                       child: Center(
//                           child: Text(
//                         "Next",
//                         style: GoogleFonts.poppins(
//                             color: Colors.white,
//                             fontSize: 14.sp,
//                             fontWeight: FontWeight.w500),
//                       )),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   )
//                 ],
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
