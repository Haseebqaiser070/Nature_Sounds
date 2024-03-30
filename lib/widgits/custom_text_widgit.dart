import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final title;
  final fontWeight;
  final textColor;
  final fontSize;
  final textPosition;
  final textheight;

  CustomText({
    this.title,
    this.fontWeight,
    this.textColor,
    this.fontSize,
    this.textPosition,
    this.textheight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        title,
        textAlign: textPosition,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
          height: textheight,
        ),
      ),
    );
  }
}
