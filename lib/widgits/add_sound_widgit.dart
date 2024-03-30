import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddSoundWidgit extends StatelessWidget {
  final title;
  final icon;
  final premium;
  const AddSoundWidgit({this.title, this.icon, this.premium});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        premium == true
            ? Image(
                image: AssetImage('assets/icons/star.png'),
              )
            : Image(
                color: Color(0xffFAEDE0),
                image: AssetImage('assets/icons/star.png'),
              ),
        Image(
          image: AssetImage('assets/icons/${icon}'),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(color: Color(0xff8398F3), fontSize: 12),
        )
      ],
    );
  }
}
