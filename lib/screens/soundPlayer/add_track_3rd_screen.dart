import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

import '../../constants/app_theme.dart';
import '../../widgits/custom_text_widgit.dart';

class AddTrackScreenThird extends StatefulWidget {
  const AddTrackScreenThird({super.key});

  @override
  State<AddTrackScreenThird> createState() => _AddTrackScreenThirdState();
}

class _AddTrackScreenThirdState extends State<AddTrackScreenThird> {
  bool _isPlaying = false;

  void _playPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  int _currentTimeValue = 3;
  int _current = 3;
  double _currentValueSlider = 50.0;

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
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: 340.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: const Color(0xffE36A79),
                    borderRadius: new BorderRadius.circular(20.r)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10.w),
                    const Image(
                        image: AssetImage('assets/icons/lightrainicon.png')),
                    SizedBox(width: 10.w),
                    Text(
                      "Light rain",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              trackHeight: 2.0,
                              thumbColor: Colors.white,
                              inactiveTrackColor: Color(0xffFA9384),
                              activeTrackColor: Colors.white,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 8)),
                          child: Slider(
                            value: _currentValueSlider,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (double value) {
                              setState(() {
                                _currentValueSlider = value;
                              });
                            },
                          ),
                        ),
                        const Image(
                            color: Colors.white,
                            image: AssetImage('assets/icons/cancel.png')),
                      ],
                    ),
                    SizedBox(width: 10.w),
                  ],
                )),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(width: 20.w),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      NumberPicker(
                                        value: _currentTimeValue,
                                        minValue: 00,
                                        maxValue: 24,
                                        onChanged: (value) => setState(
                                            () => _currentTimeValue = value),
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
                                        onChanged: (value) =>
                                            setState(() => _current = value),
                                      ),
                                      // Text('Current value: $_currentValue'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: const Color(0xff3A4C7A)),
                    child: const Center(
                      child: Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
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
                SizedBox(width: 20.w),
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
