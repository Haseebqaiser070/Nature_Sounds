import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgits/custom_text_widgit.dart';
import '../navigationbar/navigationbar_screen.dart';

class PrimumUserScreen extends StatefulWidget {
  const PrimumUserScreen({super.key});

  @override
  State<PrimumUserScreen> createState() => _PrimumUserScreenState();
}

class _PrimumUserScreenState extends State<PrimumUserScreen> {
  bool _isMaleSelected = true;
  bool _isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFAEDE0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(right: 20.w, bottom: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Image(image: AssetImage('assets/icons/star.png')),
                  SizedBox(width: 10.w),
                  CustomText(
                    title: 'Get Premium',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    textColor: const Color(0xffFA9384),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(NvigationBarScreen(
                        selectedIndex: 0,
                      ));
                    },
                    child: const Image(
                      image: AssetImage('assets/icons/cancel.png'),
                    ),
                  ),
                ],
              ),
            ),
            CustomText(
              title: 'You are a premium user',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textColor: const Color(0xff8398F3),
            ),
            SizedBox(height: 7.h),
            const Image(image: AssetImage('assets/getPrimiumPic.png')),
            SizedBox(height: 10.h),
            CustomText(
              title: 'Thank you for your support!',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textColor: const Color(0xff8398F3),
            ),
            SizedBox(height: 17.h),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isMaleSelected = true;
                          _isFemaleSelected = false;
                        });
                      },
                      child: Container(
                        height: 133.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: SizedBox(),
                            ),
                            CustomText(
                              title: 'Monthly',
                              textColor: const Color(0xff8398F3),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            CustomText(
                              title: '\$x',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              textColor: const Color(0xffFA9384),
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            CustomText(
                              title: 'Normal Price',
                              textColor: const Color(0xff8398F3),
                              fontSize: 14.sp,
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 21.w),
                const Image(
                    image: AssetImage('assets/icons/premiumscreenicon.png')),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: CustomText(
                          title:
                              'Get premium access on a month-to-month basis. You are free to cancel anytime.',
                          textColor: const Color(0xffE36A79),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 21.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: DottedLine(
                dashColor: Color(0xff8398F3).withOpacity(0.5),
              ),
            ),
            SizedBox(height: 21.h),
            CustomText(
              title: 'Premium features',
              textColor: const Color(0xffFA9384),
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 8.h),
            Container(
              height: 230.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img_layer1.png'))),
              child: Column(
                children: [
                  Text(
                    'Get rid of ads \n Create your own tracks \n Unlimited mood tracking \n Access all premium tracks \n Unrestricted sounds & favs \nDark Mode & Color schemes ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      height: 1.9.h,
                      fontSize: 12.sp,
                      color: const Color(0xff8398F3),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
