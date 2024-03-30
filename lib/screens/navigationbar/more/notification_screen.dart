import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool _lights = false;
  bool _notification = false;
  int _currentTimeValue = 3;
  int _current = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAEDE0),
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
              "Notifications",
              style: GoogleFonts.poppins(color: Color(0xff8398F3)),
            ),
            const Spacer(),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFAEDE0),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              height: 60.h,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Switch(
                      activeColor: Color(0xff8398F3),
                      value: _notification,
                      onChanged: (bool value) {
                        setState(() {
                          _notification = value;
                        });
                      },
                    ),
                    Text(
                      "General Notifications",
                      style: GoogleFonts.poppins(color: Color(0xff8398F3)),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: double.infinity,
              height: 60.h,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      style: GoogleFonts.poppins(color: Color(0xff8398F3)),
                    ),
                    const Spacer(),
                    Text(
                      "3",
                      style: GoogleFonts.poppins(
                          color: Color(0xff8398F3),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5.r,
                    ),
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
                                      color: Color(0xffFFFCFA),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: InkWell(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20, bottom: 15),
                                            child: Image(
                                              color: const Color(0xff8398F3),
                                              image: AssetImage(
                                                  'assets/icons/cancel.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          NumberPicker(
                                            value: _currentTimeValue,
                                            minValue: 0,
                                            maxValue: 24,
                                            onChanged: (value) => setState(() =>
                                                _currentTimeValue = value),
                                          ),
                                          Text(
                                            ":",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 40),
                                          ),
                                          NumberPicker(
                                            value: _current,
                                            minValue: 0,
                                            maxValue: 60,
                                            onChanged: (value) => setState(
                                                () => _current = value),
                                          ),
                                          // Text('Current value: $_currentValue'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 2,
                                                    color: Color(0xff8398F3)),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: const Center(
                                              child: Icon(
                                                Icons.check,
                                                color: Color(0xff8398F3),
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
                      child: const Icon(
                        Icons.add,
                        color: Color(0xff8398F3),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 168.h,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 24.w, top: 30.h, bottom: 30.h, right: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Image(
                            image: AssetImage('assets/icons/cancel.png')),
                        SizedBox(width: 10.w),
                        Text(
                          "Reminder #1",
                          style: GoogleFonts.poppins(
                              color: Color(0xff8398F3),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Text(
                          "11:34",
                          style: GoogleFonts.poppins(
                              color: Color(0xff8398F3),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        const Image(
                            image: AssetImage('assets/icons/cancel.png')),
                        SizedBox(width: 10.w),
                        Text(
                          "Reminder #1",
                          style: GoogleFonts.poppins(
                              color: Color(0xff8398F3),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Text(
                          "11:34",
                          style: GoogleFonts.poppins(
                              color: Color(0xff8398F3),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      children: [
                        const Image(
                            image: AssetImage('assets/icons/cancel.png')),
                        SizedBox(width: 10.w),
                        Text(
                          "Reminder #1",
                          style: GoogleFonts.poppins(
                              color: Color(0xff8398F3),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Text(
                          "11:34",
                          style: GoogleFonts.poppins(
                              color: Color(0xff8398F3),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
