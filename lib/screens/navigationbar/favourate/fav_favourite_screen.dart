import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:nature_sounds/widgits/custom_text_widgit.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_theme.dart';
import '../../soundPlayer/add_track_first_screen.dart';

class FavFvouriteScreen extends StatelessWidget {
  const FavFvouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: theme(_).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 153.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                      color: theme(_).colorScheme.onBackground,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    children: [
                      Spacer(),
                      Icon(Icons.favorite, color: Color(0xffE36A79)),
                      Spacer(),
                      CustomText(
                        title:
                            'Like tracks from other categories or \n create your own.',
                        textPosition: TextAlign.center,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        textColor: Color(0xff8398F3),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Get.to(AddTrackScreenfirst());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/createicon.png')),
                            CustomText(
                              title: '   Create',
                              textColor: Color(0xffFA9384),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
