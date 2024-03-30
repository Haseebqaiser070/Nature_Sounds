import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/widgits/custom_text_widgit.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  bool _lights = false;
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
            const Spacer(),
            Text(
              "Downloads Settings",
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
          Container(
            height: 147.h,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10.r),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Switch(
                        value: _lights,
                        onChanged: (bool value) {
                          setState(() {
                            _lights = value;
                          });
                        },
                      ),
                      Text(
                        "Save sounds to device",
                        style: GoogleFonts.poppins(color: Color(0xff8398F3)),
                      ),
                      const Spacer(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.r),
                    child: CustomText(
                      title:
                          'Sounds that are downloaded on demand will be saved to your device, they will be available offline and won’t need to download them again in the future.',
                      textColor: Color(0xff8398F3),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
