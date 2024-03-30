import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/screens/soundPlayer/add_track_second_screen.dart';
import 'package:nature_sounds/screens/soundPlayer/player_screen.dart';
import 'package:provider/provider.dart';

import '../../constants/app_theme.dart';
import '../../widgits/custom_text_widgit.dart';
import 'add_track_3rd_screen.dart';

class AddTrackScreenfirst extends StatefulWidget {
  const AddTrackScreenfirst({super.key});

  @override
  State<AddTrackScreenfirst> createState() => _AddTrackScreenfirstState();
}

class _AddTrackScreenfirstState extends State<AddTrackScreenfirst> {
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Expanded(
                child: TextField(
                  style: GoogleFonts.poppins(color: Color(0xff8398F3)),
                  maxLength: 24,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name your track",
                    hintStyle: GoogleFonts.poppins(
                      color: Color(0xff8398F3),
                    ),
                  ),
                ),
              ),

              // CustomText(
              //   title: 'Name your track',
              //   textColor: const Color(0xff8398F3),
              //   fontSize: 16.sp,
              //   fontWeight: FontWeight.w400,
              // ),
              const Spacer(),
            ],
          ),
        ),
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
                        color: const Color(0xff8398F3)),
                  ),
                  SizedBox(height: 21.h),
                  InkWell(
                    onTap: () {
                      Get.to(const AddTrackScreenSecond());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          color: Color(0xffFA9384),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Add',
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffFA9384)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(PlayerScreen());
                  },
                  child: Container(
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
                  color: const Color(0xff3A4C7A),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: "Playing",
                      textColor: const Color(0xffE36A79),
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
                        color: const Color(0xffE36A79),
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
