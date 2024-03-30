import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoContainer extends StatelessWidget {
  final ht;
  final wt;

  const LogoContainer({super.key, this.ht, this.wt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ht,
      width: wt,
      // decoration: BoxDecoration(
      //   color: Color(0xff324472),
      //   borderRadius: BorderRadius.circular(20.r),
      // ),
      child: Center(
          child: Image(
        // color: Color(0xffFA9384),
        image: AssetImage("assets/icons/logo.png"),
      )),
    );
  }
}
