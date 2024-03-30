import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/screens/soundPlayer/add_sounds.dart';
import 'package:nature_sounds/widgits/custom_text_widgit.dart';
import 'package:numberpicker/numberpicker.dart';

import 'add_track_first_screen.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  bool _isPlaying = false;

  void _playPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  double _currentValueSlider = 50.0;

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
            Text(
              "A rainy day",
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
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: 340.w,
              height: 60.h,
              decoration: BoxDecoration(
                  color: const Color(0xffE36A79),
                  borderRadius: new BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r))),
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
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                trackHeight: 2.0,
                                thumbColor: Colors.white,
                                inactiveTrackColor: Color(0xffFA9384),
                                activeTrackColor: Colors.white,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 8)),
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
                        ),
                        const Image(
                            color: Colors.white,
                            image: AssetImage('assets/icons/cancel.png')),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              )),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: 340.w,
              height: 60.h,
              decoration: const BoxDecoration(
                color: Color(0xffE36A79),
              ),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10.w),
                  const Image(image: AssetImage('assets/icons/tundericon.png')),
                  SizedBox(width: 10.w),
                  Text(
                    "Distant Thunder",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                trackHeight: 2.0,
                                thumbColor: Colors.white,
                                inactiveTrackColor: Color(0xffFA9384),
                                activeTrackColor: Colors.white,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 8)),
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
                        ),
                        const Image(
                            color: Colors.white,
                            image: AssetImage('assets/icons/cancel.png')),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              )),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: 340.w,
              height: 60.h,
              decoration: BoxDecoration(
                  color: const Color(0xffE36A79),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10.w),
                    const Image(
                        image: AssetImage('assets/icons/windowpitharicon.png')),
                    SizedBox(width: 10.w),
                    Text(
                      "Window Pather",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 2.0,
                                thumbColor: Colors.white,
                                inactiveTrackColor: Color(0xffFA9384),
                                activeTrackColor: Colors.white,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 8),
                              ),
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
                          ),
                          const Image(
                              color: Colors.white,
                              image: AssetImage('assets/icons/cancel.png')),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 144.h,
            width: 340.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: const Color(0xff3A4C7A)),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20.w),
                    const Image(image: AssetImage('assets/moreScreenPic.png')),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            title: 'Lifetime Premium', textColor: Colors.red),
                        CustomText(title: '- No Ads', textColor: Colors.white),
                        CustomText(
                            title: '- Access all tracks',
                            textColor: Colors.white),
                        CustomText(
                            title: '- Unlimated sounds',
                            textColor: Colors.white),
                        CustomText(
                            title: '- Mix your own tracks',
                            textColor: Colors.white),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 21.h),
            child: Row(
              children: [
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
                                        minValue: 0,
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
                    width: 99.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: const Color(0xff3A4C7A),
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    child: Row(
                      children: [
                        SizedBox(width: 10.w),
                        const Icon(
                          Icons.history,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.w),
                        CustomText(
                          title: '09:53',
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          actions: [
                            Container(
                              width: 340.w,
                              height: 186.h,
                              child: Column(
                                children: [
                                  SizedBox(height: 20.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Save this track to your favs",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff8398F3),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 23.w),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: Image(
                                            color: Color(0xff8398F3),
                                            image: AssetImage(
                                                "assets/icons/cancel.png")),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Expanded(
                                    child: TextField(
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff8398F3)),
                                      maxLength: 24,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffFAEDE0),
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        hintText: "Name your track",
                                        hintStyle: GoogleFonts.poppins(
                                          color: Color(0xff8398F3),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
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
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: const Color(0xff3A4C7A),
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(AddSoundsScreen());
                  },
                  child: Container(
                    width: 60.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffFA9384),
                        borderRadius: BorderRadius.all(Radius.circular(20.r))),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.h,
            decoration: BoxDecoration(
                color: const Color(0xff3A4C7A),
                borderRadius: new BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r))),
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
    );
  }
}
