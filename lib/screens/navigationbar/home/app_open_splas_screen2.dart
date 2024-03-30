import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nature_sounds/widgits/custom_text_widgit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class AppOpenSplasScreen2 extends StatelessWidget {
  const AppOpenSplasScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xfffaede0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.r),
              child: Row(
                children: [
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Image(
                          image: AssetImage('assets/icons/cancel.png')))
                ],
              ),
            ),
            CustomText(
              title: 'Benefits of listening to Nature sounds',
              textColor: const Color(0xff324472),
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            const Image(image: AssetImage('assets/onboardpicOne.png')),
            Padding(
              padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
              child: Row(
                children: [
                  CustomText(
                    title: 'Sub Heading',
                    textColor: const Color(0xff324472),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a egestas orci. Quisque non tempus mi. Aenean molestie quis elit at pretium. Phasellus imperdiet eget erat in tempus. Proin mollis ut risus vitae condimentum. Praesent a tortor ac purus dictum ultricies quis tempus velit. Nullam eget condimentum elit. Mauris at aliquam dui. Proin placerat magna ac ligula placerat congue. \n \nEtiam tincidunt augue ac mi porttitor, id eleifend ex vestibulum. Nunc eget tristique neque. Praesent vitae odio nisi. Quisque ut congue lorem. Nam consequat blandit dolor vitae convallis. Morbi est orci, laoreet vitae rutrum id, cursus vel sem. Nam nulla dolor, venenatis ac tortor dapibus, scelerisque maximus est. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut vitae venenatis quam. Praesent eu sollicitudin nisi. Donec venenatis orci ut rutrum laoreet. In luctus enim ut ultricies venenatis. Duis rutrum sed nibh eget mollis. Vestibulum eget eleifend neque. Sed leo nisl, pharetra ut mi sit amet, tristique porttitor lorem. Nam ultricies enim nec sollicitudin ullamcorper. Morbi sit amet fermentum purus, at tincidunt urna. Ut iaculis, urna ut ultricies maximus, lacus massa fermentum augue, a varius diam velit quis nisl. Praesent purus mauris, pretium non augue non, dignissim imperdiet felis. Integer dignissim arcu a orci congue vulputate.',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff8398F3),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    ));
  }
}
