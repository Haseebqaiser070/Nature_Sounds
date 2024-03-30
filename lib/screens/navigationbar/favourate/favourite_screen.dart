import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/screens/navigationbar/home/favourite_home_screen.dart';
import 'package:nature_sounds/screens/navigationbar/home/home_screen.dart';
import 'package:nature_sounds/screens/navigationbar/mood/mood_screen.dart';
import 'package:nature_sounds/screens/navigationbar/more/more_screen.dart';
import 'package:provider/provider.dart';
import '../../../widgits/custom_text_widgit.dart';
import '../home/chill_screen.dart';
import '../home/healing_home_screen.dart';
import '../home/meditate_home_screen.dart';
import '../home/nature_home_screen.dart';
import '../../../constants/app_theme.dart';
import 'fav_favourite_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
    _controller.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    setState(() {
      _controller.dispose();
      super.dispose();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: theme(_).colorScheme.background,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: _controller.index == 0
                          ? const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/fvtSlide.png'))
                          : _controller.index == 1
                              ? const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/homeScreenImage.png'))
                              : _controller.index == 2
                                  ? const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/meditateSlide.png'))
                                  : _controller.index == 3
                                      ? const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/healingSlide.png'))
                                      : const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/chillSlide.png'))),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: [
                        Image(
                            color: theme(_).colorScheme.background,
                            image:
                                const AssetImage('assets/custompicdesign.png')),
                        Positioned(
                          left: 43.w,
                          right: 43.w,
                          top: 10.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                  image:
                                      AssetImage('assets/icons/addmood.png')),
                              SizedBox(height: 3.h),
                              const Icon(
                                Icons.add,
                                size: 18,
                                color: Color(0xff8398F3),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Add Mood',
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff8398F3),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            ///////////////////
            _buildTabBar(themeNotifier),
            Expanded(
              child: Container(
                height: 500.h,
                child: TabBarView(
                  controller: _controller,
                  children: const [
                    FavFvouriteScreen(),
                    FavouriteHomeScreen(),
                    MeditateHomeScreen(),
                    HealingHomeScreen(),
                    ChillScreen(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ));
    });
  }

  Padding _buildTabBar(ModelTheme themeNotifier) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
      child: TabBar(
        isScrollable: true,
        padding: EdgeInsets.zero,
        indicator: const BoxDecoration(color: Colors.transparent),
        controller: _controller,
        indicatorPadding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: CircleAvatar(
              backgroundColor: _controller.index == 0
                  ? const Color(0xffE36A79)
                  : themeNotifier.isDark
                      ? Colors.black
                      : Colors.white,
              radius: 20.r,
              child: Tab(
                iconMargin: EdgeInsets.zero,
                icon: Icon(
                  Icons.favorite_border,
                  color: _controller.index == 0
                      ? Colors.white
                      : const Color(0xffE36A79),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Container(
              height: 40.h,
              width: 76.w,
              // padding: EdgeInsets.symmetric(
              //     horizontal: 17.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: _controller.index == 1
                    ? const Color(0xffE36A79)
                    : themeNotifier.isDark
                        ? const Color(0xff171B27)
                        : Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),

              child: Center(
                child: CustomText(
                  title: "Nature",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  textColor: _controller.index == 1
                      ? Colors.white
                      : const Color(0xffE36A79),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Container(
              height: 40.h,
              width: 93.w,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: _controller.index == 2
                    ? const Color(0xffE36A79)
                    : themeNotifier.isDark
                        ? const Color(0xff171B27)
                        : Colors.white,
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: Tab(
                child: Text(
                  "Meditate",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: _controller.index == 2
                        ? Colors.white
                        : const Color(0xffE36A79),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Container(
              height: 40.h,
              width: 76.w,
              decoration: BoxDecoration(
                color: _controller.index == 3
                    ? const Color(0xffE36A79)
                    : themeNotifier.isDark
                        ? const Color(0xff171B27)
                        : Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Tab(
                child: CustomText(
                  title: "Healing",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  textColor: _controller.index == 3
                      ? Colors.white
                      : const Color(0xffE36A79),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 13.w),
            child: Container(
              height: 40.h,
              width: 76.w,
              decoration: BoxDecoration(
                color: _controller.index == 4
                    ? const Color(0xffE36A79)
                    : themeNotifier.isDark
                        ? const Color(0xff171B27)
                        : Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Tab(
                child: CustomText(
                  title: "Chill",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  textColor: _controller.index == 4
                      ? Colors.white
                      : const Color(0xffE36A79),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ThemeData theme(_) => Theme.of(_);
}
