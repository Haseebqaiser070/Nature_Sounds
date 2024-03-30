import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../widgits/custom_text_widgit.dart';
import '../../../widgits/homescreen_card_widgit.dart';
import '../../../constants/app_theme.dart';
import 'app_open_splas_screen2.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteHomeScreen extends StatefulWidget {
  const FavouriteHomeScreen({super.key});

  @override
  State<FavouriteHomeScreen> createState() => _FavouriteHomeScreenState();
}

class _FavouriteHomeScreenState extends State<FavouriteHomeScreen> {
  bool _isFavorited = false;
  Color _favoriteIconColor = const Color(0xffE36A79);

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
      _favoriteIconColor = _isFavorited
          ? const Color(0xffE36A79)
          : const Color(0xffE36A79); // change color when tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return Scaffold(
        backgroundColor: themeNotifier.isDark
            ? const Color(0xff10141D)
            : const Color(0xffFAEDE0),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 67.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: const Color(0xff3A4C7A)),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFA9384),
                                  size: 15,
                                ),
                                SizedBox(width: 5.w),
                                CustomText(
                                  title:
                                      'Get lifetime premium for a limited time!',
                                  textColor: const Color(0xffFA9384),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            CustomText(
                              title:
                                  'No ads | Listen unrestricted | Create your own & more',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              textColor: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(width: 20.w),
                        Expanded(
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xffFA9384),
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                InkWell(
                  onTap: () {
                    Get.to(const AppOpenSplasScreen2());
                  },
                  child: Container(
                    width: 340.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                        color: const Color(0xff8398F3),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r))),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        const Image(
                            image:
                                AssetImage('assets/icons/aboutnatureicon.png')),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "About Natural Sounds",
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                HomeScreenCard(
                  title: 'Storm’s a-comin’',
                  color: theme(_).colorScheme.onBackground,
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 340.w,
                  height: 60.h,
                  decoration:
                      BoxDecoration(color: theme(_).colorScheme.onBackground),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        CustomText(
                          title: 'Day at the beach',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: const Color(0xff8398F3),
                        ),
                        SizedBox(width: 10.w),
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFA9384),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: _toggleFavorite,
                          icon: Icon(_isFavorited
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                          color: const Color(0xffE36A79),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                HomeScreenCard(
                  title: 'Out at sea',
                  color: theme(_).colorScheme.onBackground,
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 340.w,
                  height: 60.h,
                  decoration:
                      BoxDecoration(color: theme(_).colorScheme.onBackground),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        CustomText(
                          title: 'Welcome to the jungle',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: const Color(0xff8398F3),
                        ),
                        SizedBox(width: 10.w),
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFA9384),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: _toggleFavorite,
                          icon: Icon(_isFavorited
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                          color: const Color(0xffE36A79),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                HomeScreenCard(
                  title: 'Cozy cabin',
                  color: theme(_).colorScheme.onBackground,
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 340.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: theme(_).colorScheme.onBackground,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        CustomText(
                          title: 'The meadows',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          textColor: const Color(0xff8398F3),
                        ),
                        SizedBox(width: 10.w),
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFA9384),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: _toggleFavorite,
                          icon: Icon(_isFavorited
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                          color: _favoriteIconColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      );
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
