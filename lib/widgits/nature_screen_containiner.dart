import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_widgit.dart';

class NatureScreenContainer extends StatefulWidget {
  final title;
  final subTitle;
  final color;
  const NatureScreenContainer(
      {super.key, this.title, this.subTitle, this.color});

  @override
  State<NatureScreenContainer> createState() => _NatureScreenContainerState();
}

class _NatureScreenContainerState extends State<NatureScreenContainer> {
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
    return Container(
      height: 60.h,
      width: 340.w,
      decoration: BoxDecoration(
        color: widget.color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 25.w),
          const Image(image: AssetImage('assets/icons/more_ver_icon.png')),
          SizedBox(width: 5.w),
          const Image(image: AssetImage('assets/icons/more_ver_icon.png')),
          SizedBox(width: 14.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                title: widget.title,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                textColor: const Color(0xffE36A79),
              ),
              CustomText(
                title: widget.subTitle,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textColor: const Color(0xff8398F3),
              )
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: _toggleFavorite,
            icon: Icon(
                _isFavorited ? Icons.favorite : Icons.favorite_border_outlined),
            color: const Color(0xffE36A79),
          ),
          SizedBox(width: 34.w)
        ],
      ),
    );
  }
}
