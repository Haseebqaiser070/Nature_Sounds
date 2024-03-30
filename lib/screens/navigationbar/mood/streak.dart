import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_theme.dart';

class Streak_screen extends StatefulWidget {
  const Streak_screen({Key? key}) : super(key: key);

  @override
  State<Streak_screen> createState() => _Streak_screenState();
}

class _Streak_screenState extends State<Streak_screen> {
  List<String> poplist = ["Edit", 'Delete'];

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: theme(_).colorScheme.background,
        body: Column(
          children: [
            Container(
              height: 150.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/fvtSlide.png'))),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Image(
                        color: theme(_).colorScheme.background,
                        image: const AssetImage('assets/custompicdesign.png')),
                    Positioned(
                      left: 54.w,
                      right: 54.w,
                      top: 25.h,
                      child: Column(
                        children: [
                          SizedBox(height: 3.h),
                          Text(
                            '2-day',
                            style: GoogleFonts.poppins(
                                color: const Color(0xffFA9384),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            'Streak',
                            style: GoogleFonts.poppins(
                                color: const Color(0xff8398F3),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  "24 Feb",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, color: Color(0xff8398F3)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 80.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffFA9384),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Center(
                      child: Text(
                    " 0 entries",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Color(0xffFFFCFA)),
                  )),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 108.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff8398F3),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: Color(0xffFFFCFA),
                      ),
                      Text(
                        "2 hr 24 min",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFCFA)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Divider(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  "24 Feb",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, color: Color(0xff8398F3)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 123.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffFA9384),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                          color: Color(0xffFFFFFF),
                          image: AssetImage("assets/icons/emoji3.png")),
                      Text(
                        " 1.5 Average",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFCFA)),
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 77.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff8398F3),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: Color(0xffFFFCFA),
                      ),
                      Text(
                        "0 min",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFCFA)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 340.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFCFA),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.r),
                      topLeft: Radius.circular(10.r))),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 58.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff3A4C7A),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                            color: Color(0xffFA9384),
                            image: AssetImage("assets/icons/emoji0.png")),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "0",
                          style: GoogleFonts.poppins(color: Color(0xffFA9384)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Text("13:35, 23rd Feb 2023"),
                  SizedBox(
                    width: 70.w,
                  ),
                  PopupMenuButton(
                    icon: const Icon(Icons.more_horiz),
                    onSelected: (value) {
                      if (value) {}
                    },
                    itemBuilder: (context) {
                      return poplist
                          .map((e) => PopupMenuItem(
                              child: Container(
                                  width: 77.w,
                                  height: 50.h,
                                  color: Color(0xff8398F3),
                                  child: Center(
                                      child: Text(
                                    e,
                                    style: GoogleFonts.poppins(
                                        color: Color(0xffFFFCFA)),
                                  )))))
                          .toList();
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 340.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFCFA),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.r),
                      bottomLeft: Radius.circular(10.r))),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 58.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff3A4C7A),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                            color: Color(0xffFA9384),
                            image: AssetImage("assets/icons/emoji3.png")),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "3",
                          style: GoogleFonts.poppins(color: Color(0xffFA9384)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Text("13:35, 23rd Feb 2023"),
                  SizedBox(
                    width: 70.w,
                  ),
                  PopupMenuButton(
                    icon: const Icon(Icons.more_horiz),
                    onSelected: (value) {
                      if (value) {}
                    },
                    itemBuilder: (context) {
                      return poplist
                          .map((e) => PopupMenuItem(
                              child: Container(
                                  width: 77.w,
                                  height: 50.h,
                                  color: Colors.green,
                                  child: Center(
                                      child: Text(
                                    e,
                                    style: GoogleFonts.poppins(
                                        color: Color(0xffFFFCFA)),
                                  )))))
                          .toList();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Divider(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  "24 Feb",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, color: Color(0xff8398F3)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 123.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffFA9384),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                          color: Color(0xffFFFFFF),
                          image: AssetImage("assets/icons/emoji7.png")),
                      Text(
                        " 1.5 Average",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFCFA)),
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 77.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff8398F3),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: Color(0xffFFFCFA),
                      ),
                      Text(
                        "0 min",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFCFA)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 340.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFCFA),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.r),
                      topLeft: Radius.circular(10.r))),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 58.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff3A4C7A),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                            color: Color(0xffFA9384),
                            image: AssetImage("assets/icons/emoji7.png")),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "7",
                          style: GoogleFonts.poppins(color: Color(0xffFA9384)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Text("13:35, 23rd Feb 2023"),
                  SizedBox(
                    width: 80.w,
                  ),
                  PopupMenuButton(
                    icon: const Icon(Icons.more_horiz),
                    onSelected: (value) {
                      if (value) {}
                    },
                    itemBuilder: (context) {
                      return poplist
                          .map((e) => PopupMenuItem(
                              child: Container(
                                  width: 77.w,
                                  height: 50.h,
                                  color: Colors.green,
                                  child: Center(
                                      child: Text(
                                    e,
                                    style: GoogleFonts.poppins(
                                        color: Color(0xffFFFCFA)),
                                  )))))
                          .toList();
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 340.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFCFA),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.r),
                      bottomLeft: Radius.circular(10.r))),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 58.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff3A4C7A),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                            color: Color(0xffFA9384),
                            image: AssetImage("assets/icons/emoji10.png")),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "10",
                          style: GoogleFonts.poppins(color: Color(0xffFA9384)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Text("13:35, 23rd Feb 2023"),
                  SizedBox(
                    width: 70.w,
                  ),
                  PopupMenuButton(
                    icon: const Icon(Icons.more_horiz),
                    onSelected: (value) {
                      if (value) {}
                    },
                    itemBuilder: (context) {
                      return poplist
                          .map((e) => PopupMenuItem(
                              child: Container(
                                  width: 77.w,
                                  height: 50.h,
                                  color: Colors.green,
                                  child: Center(
                                      child: Text(
                                    e,
                                    style: GoogleFonts.poppins(
                                        color: Color(0xffFFFCFA)),
                                  )))))
                          .toList();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
