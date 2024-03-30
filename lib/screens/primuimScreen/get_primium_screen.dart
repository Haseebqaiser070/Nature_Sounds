import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/screens/primuimScreen/primium_user_screen.dart';

import '../../widgits/custom_text_widgit.dart';
import '../navigationbar/navigationbar_screen.dart';

class GetPrimumScreen extends StatefulWidget {
  const GetPrimumScreen({super.key});

  @override
  State<GetPrimumScreen> createState() => _GetPrimumScreenState();
}

class _GetPrimumScreenState extends State<GetPrimumScreen> {
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
              title: 'Break all the limitations',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textColor: const Color(0xff8398F3),
            ),
            SizedBox(height: 7.h),
            const Image(image: AssetImage('assets/getPrimiumPic.png')),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isMaleSelected = true;
                      _isFemaleSelected = false;
                    });
                  },
                  child: Container(
                      height: 133.h,
                      width: 165.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            width: 2.w,
                            color: _isMaleSelected
                                ? const Color(0xffE36A79)
                                : Colors.transparent,
                          ),
                          color: Colors.white),
                      child: Column(
                        children: [
                          const Spacer(),
                          CustomText(
                            title: 'Monthly',
                            textColor: const Color(0xff8398F3),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          const Spacer(),
                          CustomText(
                            title: '\$x',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            textColor: const Color(0xffFA9384),
                          ),
                          const Spacer(),
                          CustomText(
                            title: 'Normal Price',
                            textColor: const Color(0xff8398F3),
                            fontSize: 14.sp,
                          ),
                          const Spacer(),
                        ],
                      )),
                ),
                SizedBox(width: 10.w),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isMaleSelected = false;
                      _isFemaleSelected = true;
                    });
                  },
                  child: Container(
                    height: 133.h,
                    width: 165.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.w,
                          color: _isFemaleSelected
                              ? const Color(0xffE36A79)
                              : Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white),
                    child: Column(
                      children: [
                        const Spacer(),
                        CustomText(
                          title: 'Lifetime access',
                          textColor: const Color(0xff8398F3),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        const Spacer(),
                        CustomText(
                          title: '\$y',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          textColor: const Color(0xffFA9384),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(const PrimumUserScreen());
                          },
                          child: Container(
                            height: 30.h,
                            width: 135.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: const Color(0xffE36A79)),
                            child: Center(
                              child: CustomText(
                                title: 'For a limited Time',
                                textColor: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 21.w),
                const Image(
                    image: AssetImage('assets/icons/premiumscreenicon.png')),
                SizedBox(width: 10.w),
                _isMaleSelected == false && _isFemaleSelected == true
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            title:
                                'No recurring subscription with lifetime premium - just',
                            textColor: const Color(0xffE36A79),
                            textPosition: TextAlign.center,
                          ),
                          CustomText(
                            title:
                                'one single payment for all current & future features.',
                            textColor: const Color(0xffE36A79),
                            textPosition: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            title:
                                'Get premium access on a month-to-month basis. You',
                            textColor: const Color(0xffE36A79),
                            textPosition: TextAlign.center,
                          ),
                          CustomText(
                            title: 'are free to cancel anytime.',
                            textColor: const Color(0xffE36A79),
                            textPosition: TextAlign.center,
                          )
                        ],
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
            Container(
              height: 60.h,
              width: 340.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r)),
              child: Center(
                child: CustomText(
                  title: "Just remove ads | Sz",
                  textColor: const Color(0xffFA9384),
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff3A4C7A),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  InkWell(
                    onTap: () {
                      Get.to(NvigationBarScreen(
                        selectedIndex: 0,
                      ));
                    },
                    child: Container(
                      height: 60.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: const Color(0xffFA9384)),
                      child:
                          _isMaleSelected == false && _isFemaleSelected == true
                              ? Center(
                                  child: CustomText(
                                    title: 'Get Lifetime Premium Access',
                                  ),
                                )
                              : Center(
                                  child: CustomText(
                                    title: 'Subscribe to Premium',
                                  ),
                                ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  _isMaleSelected == false && _isFemaleSelected == true
                      ? Center(
                          child: CustomText(
                            title: "one-time payment",
                            textColor: const Color(0xff8398F3),
                            fontSize: 14.sp,
                          ),
                        )
                      : Center(
                          child: CustomText(
                            title: "Recurring billing | Cancel anytime",
                            textColor: const Color(0xff8398F3),
                            fontSize: 14.sp,
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
