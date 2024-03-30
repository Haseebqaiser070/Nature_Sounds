import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../constants/app_theme.dart';
import '../../widgits/custom_text_widgit.dart';
import 'add_track_3rd_screen.dart';

class AddTrackScreenSecond extends StatefulWidget {
  const AddTrackScreenSecond({super.key});

  @override
  State<AddTrackScreenSecond> createState() => _AddTrackScreenSecondState();
}

class _AddTrackScreenSecondState extends State<AddTrackScreenSecond> {
  bool _isPlaying = false;

  void _playPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return SafeArea(
          child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: theme(_).colorScheme.background,
            title: Row(
              children: [
                SizedBox(width: 20.w),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff8398F3),
                  ),
                ),
                SizedBox(width: 23.w),
                CustomText(
                  title: 'User’s Track Title',
                  textColor: const Color(0xff8398F3),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                const Spacer(),
              ],
            )),
        backgroundColor: theme(_).colorScheme.background,
        body: Column(
          children: [
            Container(
              height: 101.h,
              width: 340.w,
              decoration: BoxDecoration(
                color: theme(_).colorScheme.onBackground,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add sounds to your track',
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8398F3)),
                  ),
                  SizedBox(height: 21.h),
                  InkWell(
                    onTap: () {
                      Get.to(AddTrackScreenThird());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xffFA9384),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Add',
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFA9384)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: const Color(0xffFA9384),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: const Center(
                      child: Icon(
                    Icons.add,
                    color: Color(0xff324472),
                  )),
                ),
                SizedBox(
                  width: 20.w,
                )
              ],
            ),
            SizedBox(height: 18.h),
            Container(
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff3A4C7A),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: "Playing",
                      textColor: Color(0xffE36A79),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: _playPause,
                      child: Icon(
                        _isPlaying ? Icons.pause : Icons.play_arrow,
                        size: 40,
                        color: Color(0xffE36A79),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ));
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
