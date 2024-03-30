import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeAlertScreen extends StatefulWidget {
  TimeAlertScreen({super.key});

  @override
  State<TimeAlertScreen> createState() => _TimeAlertScreenState();
}

class _TimeAlertScreenState extends State<TimeAlertScreen> {
  bool _lights = false;

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
              "Timer Out",
              style: GoogleFonts.poppins(color: Color(0xff8398F3)),
            ),
            const Spacer(),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFAEDE0),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                SizedBox(width: 20.w),
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
                  "Play alert after timer ends",
                  style: GoogleFonts.poppins(
                      color: Color(0xff8398F3),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.r),
            child: Row(
              children: [
                Text(
                  "Alert sound",
                  style: GoogleFonts.poppins(
                      color: Color(0xff8398F3),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 340.w,
            height: 60.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r))),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tone 1",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.check),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 340.w,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tone 2",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 340.w,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alarm 1",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 340.w,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alarm 2",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 340.w,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sound 1",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 340.w,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sound 2",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 340.w,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sound 3",
                    style: GoogleFonts.poppins(
                        color: Color(0xff8398F3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
