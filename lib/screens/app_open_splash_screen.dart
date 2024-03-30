import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/screens/primuimScreen/get_primium_screen.dart';
import 'package:numberpicker/numberpicker.dart';

import '../widgits/custom_text_widgit.dart';

class AppOpenSplashScreen extends StatefulWidget {
  const AppOpenSplashScreen({super.key});

  @override
  State<AppOpenSplashScreen> createState() => _AppOpenSplashScreenState();
}

class _AppOpenSplashScreenState extends State<AppOpenSplashScreen> {
  bool _lights = false;
  int _currentTimeValue = 3;
  int _current = 3;
  int ind = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAEDE0),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const GetPrimumScreen());
                    },
                    child: Center(
                      child: Container(
                        height: 60.h,
                        width: 340.w,
                        decoration: BoxDecoration(
                            color: const Color(0xffFA9384),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Center(
                          child: CustomText(
                            title: 'Done',
                            textColor: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 190.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img_layer1.png'),
                            colorFilter: ColorFilter.mode(
                                Colors.white.withOpacity(0.6),
                                BlendMode.lighten))),
                    child: Column(
                      children: [
                        SizedBox(height: 30.h),
                        Text(
                          'Mental-health breaks',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff324472),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Set reminders to take a moment to assess \n your mood. It just takes a few seconds.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            letterSpacing: 0.5,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff324472),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 15.w, top: 20.h, bottom: 20.h, right: 15.w),
                      child: Row(
                        children: [
                          Switch(
                            activeColor: Color(0xff8398F3),
                            value: _lights,
                            onChanged: (bool value) {
                              setState(() {
                                _lights = value;
                              });
                            },
                          ),
                          Text(
                            "Mood reminder",
                            style: GoogleFonts.poppins(
                                color: Color(0xff8398F3),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Text(
                            ind.toString(),
                            style: GoogleFonts.poppins(
                                color: Color(0xff8398F3),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                ind++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Color(0xff8398F3),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  _lights == true
                      ? Container(
                          height: MediaQuery.of(context).size.height * 0.53,
                          width: double.infinity,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              itemCount: ind,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 20.h,
                                );
                              },
                              itemBuilder: (context, ind) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: 26.w, right: 25.w, top: 20.h),
                                  child: Row(
                                    children: [
                                      const Image(
                                          image: AssetImage(
                                              'assets/icons/cancel.png')),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "Reminder #1",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff8398F3)),
                                      ),
                                      const Spacer(),
                                      InkWell(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.grey,
                                                actions: [
                                                  Container(
                                                    height: 292.h,
                                                    width: 340.w,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffFFFCFA),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            NumberPicker(
                                                              value:
                                                                  _currentTimeValue,
                                                              minValue: 00,
                                                              maxValue: 24,
                                                              onChanged: (value) =>
                                                                  setState(() =>
                                                                      _currentTimeValue =
                                                                          value),
                                                            ),
                                                            Text(
                                                              ":",
                                                              style: GoogleFonts.poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 40),
                                                            ),
                                                            NumberPicker(
                                                              value: _current,
                                                              minValue: 0,
                                                              maxValue: 60,
                                                              onChanged: (value) =>
                                                                  setState(() =>
                                                                      _current =
                                                                          value),
                                                            ),
                                                            // Text('Current value: $_currentValue'),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              height: 40,
                                                              width: 40,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      width: 2,
                                                                      color: Color(
                                                                          0xff8398F3)),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30)),
                                                              child:
                                                                  const Center(
                                                                child: Icon(
                                                                  Icons.check,
                                                                  color: Color(
                                                                      0xff8398F3),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: Text(
                                          "11:34",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff8398F3)),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 80.h,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
