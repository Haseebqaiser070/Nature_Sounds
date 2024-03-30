import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nature_sounds/screens/soundPlayer/player_screen.dart';

import 'custom_text_widgit.dart';

class HomeScreenCard extends StatefulWidget {
  final title;
  final color;
  final staricon;
  const HomeScreenCard({super.key, this.title, this.color, this.staricon});

  @override
  State<HomeScreenCard> createState() => _HomeScreenCardState();
}

class _HomeScreenCardState extends State<HomeScreenCard> {
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
    return InkWell(
      onTap: () {
        Get.to(const PlayerScreen());
      },
      child: Container(
        width: 340.w,
        height: 60.h,
        decoration: BoxDecoration(color: widget.color),
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                title: widget.title,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textColor: const Color(0xff8398F3),
              ),
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
    );
  }
}
