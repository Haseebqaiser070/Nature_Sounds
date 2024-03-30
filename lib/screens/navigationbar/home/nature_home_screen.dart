// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nature_sounds/widgits/custom_text_widgit.dart';

// import '../../../widgits/nature_screen_containiner.dart';

// class NatureHomeScreen extends StatefulWidget {
//   const NatureHomeScreen({super.key});

//   @override
//   State<NatureHomeScreen> createState() => _NatureHomeScreenState();
// }

// class _NatureHomeScreenState extends State<NatureHomeScreen> {
//   bool _isFavorited = false;
//   Color _favoriteIconColor = const Color(0xffFA9384);

//   void _toggleFavorite() {
//     setState(() {
//       _isFavorited = !_isFavorited;
//       _favoriteIconColor = _isFavorited
//           ? const Color(0xffE36A79)
//           : const Color(0xffE36A79); // change color when tapped
//     });
//   }

//   void _showConfirmationDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Are you sure?'),
//           content: const Text('Do you want to cancel?'),
//           actions: <Widget>[
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('No'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 // Perform the action you want to do on cancel here
//               },
//               child: const Text('Yes'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xffFAEDE0),
//         body: Center(
//             child: Stack(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   height: 60.h,
//                   width: 340.w,
//                   decoration: BoxDecoration(
//                       color: const Color(0xffFFFCFA),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20.r),
//                           topRight: Radius.circular(20.r))),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(width: 25.w),
//                       const Image(
//                           image: AssetImage('assets/icons/more_ver_icon.png')),
//                       SizedBox(width: 5.w),
//                       const Image(
//                           image: AssetImage('assets/icons/more_ver_icon.png')),
//                       SizedBox(width: 14.w),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CustomText(
//                             title: 'User created',
//                             fontSize: 10.sp,
//                             fontWeight: FontWeight.w600,
//                             textColor: const Color(0xffE36A79),
//                           ),
//                           CustomText(
//                             title: 'Untitled 001',
//                             fontSize: 14.sp,
//                             fontWeight: FontWeight.w400,
//                             textColor: const Color(0xff8398F3),
//                           )
//                         ],
//                       ),
//                       const Spacer(),
//                       InkWell(
//                           onTap: () {
//                             _showConfirmationDialog(context);
//                           },
//                           child: const Image(
//                               image: AssetImage('assets/icons/cancel.png'))),
//                       SizedBox(width: 34.w)
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 2.h),
//                 InkWell(
//                   onTap: () {
//                     _showConfirmationDialog(context);
//                   },
//                   child: Container(
//                     height: 60.h,
//                     width: 340.w,
//                     decoration: const BoxDecoration(
//                       color: Color(0xffFFFCFA),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(width: 25.w),
//                         const Image(
//                             image:
//                                 AssetImage('assets/icons/more_ver_icon.png')),
//                         SizedBox(width: 5.w),
//                         const Image(
//                             image:
//                                 AssetImage('assets/icons/more_ver_icon.png')),
//                         SizedBox(width: 14.w),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CustomText(
//                               title: 'User created',
//                               fontSize: 10.sp,
//                               fontWeight: FontWeight.w600,
//                               textColor: const Color(0xffE36A79),
//                             ),
//                             CustomText(
//                               title: 'User’s Title',
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w400,
//                               textColor: const Color(0xff8398F3),
//                             )
//                           ],
//                         ),
//                         const Spacer(),
//                         const Image(
//                             image: AssetImage('assets/icons/cancel.png')),
//                         SizedBox(width: 34.w)
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10.h),
//                 const NatureScreenContainer(
//                   title: 'Nature',
//                   subTitle: 'Storm’s a-comin’',
//                 ),
//                 SizedBox(height: 2.h),
//                 const NatureScreenContainer(
//                   title: 'Nature',
//                   subTitle: 'Cozy cabin',
//                 ),
//                 SizedBox(height: 2.h),
//                 const NatureScreenContainer(
//                   title: 'Nature',
//                   subTitle: 'White noise',
//                 ),
//                 SizedBox(height: 2.h),
//                 const NatureScreenContainer(
//                   title: 'Nature',
//                   subTitle: '120 Hz  - Health',
//                 ),
//               ],
//             ),
//             Positioned(
//               top: 330.h,
//               left: 270.w,
//               child: Container(
//                 height: 60.w,
//                 width: 60.w,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20.r),
//                     color: const Color(0xffFA9384)),
//                 child: const Center(
//                   child: Image(
//                       image: AssetImage('assets/icons/floatingbuttonicon.png')),
//                 ),
//               ),
//             )
//           ],
//         )));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nature_sounds/widgits/custom_text_widgit.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/app_theme.dart';
import '../../../widgits/nature_screen_containiner.dart';

class NatureHomeScreen extends StatefulWidget {
  const NatureHomeScreen({super.key});

  @override
  State<NatureHomeScreen> createState() => _NatureHomeScreenState();
}

class _NatureHomeScreenState extends State<NatureHomeScreen> {
  // this i have added
  bool _isFavorited = false;
  int boxheight = 0;
  int boxwidth = 0;
  int seoncdboxheight = 0;
  int secondboxwidth = 0;
  bool isConfirm = true;
  bool issecondConfirm = true;

  Color _favoriteIconColor = const Color(0xffE36A79);

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
      _favoriteIconColor = _isFavorited
          ? const Color(0xffE36A79)
          : const Color(0xffE36A79); // change color when tapped
    });
  }

  // void _showConfirmationDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Are you sure?'),
  //         content: const Text('Do you want to cancel?'),
  //         actions: <Widget>[
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('No'),
  //           ),
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //               // Perform the action you want to do on cancel here
  //             },
  //             child: const Text('Yes'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return Scaffold(
        backgroundColor: theme(_).colorScheme.background,
        body: Center(
            child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 60.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                        color: theme(_).colorScheme.onBackground,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 25.w),
                        const Image(
                            image:
                                AssetImage('assets/icons/more_ver_icon.png')),
                        SizedBox(width: 5.w),
                        const Image(
                            image:
                                AssetImage('assets/icons/more_ver_icon.png')),
                        SizedBox(width: 14.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              title: 'User created',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              textColor: const Color(0xffE36A79),
                            ),
                            CustomText(
                              title: 'Untitled 001',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              textColor: const Color(0xff8398F3),
                            )
                          ],
                        ),

                        //  that's the code i have added now kamil khan
                        const Spacer(),
                        InkWell(
                            onTap: () {
                              // _showConfirmationDialog(context);
                              setState(() {
                                boxheight = 40;
                                boxwidth = 120;
                                isConfirm = false;
                              });
                            },
                            child: isConfirm
                                ? const Image(
                                    image:
                                        AssetImage('assets/icons/cancel.png'))
                                : Container()),
                        Container(
                          width: boxwidth.h,
                          height: boxheight.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xffE36A79),
                          ),
                          child: Center(
                              child: Text(
                            "Confirm delete?",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(width: 34.w)
                      ],
                    ),
                  ),

                  // Here the code end

                  //
                  SizedBox(height: 2.h),
                  Container(
                    height: 60.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                        color: theme(_).colorScheme.onBackground,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.r),
                            bottomRight: Radius.circular(20.r))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 25.w),
                        const Image(
                            image:
                                AssetImage('assets/icons/more_ver_icon.png')),
                        SizedBox(width: 5.w),
                        const Image(
                            image:
                                AssetImage('assets/icons/more_ver_icon.png')),
                        SizedBox(width: 14.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              title: 'User created',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              textColor: const Color(0xffE36A79),
                            ),
                            CustomText(
                              title: 'Untitled 001',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              textColor: const Color(0xff8398F3),
                            )
                          ],
                        ),

                        //  that's the code i have added now kamil khan
                        const Spacer(),
                        InkWell(
                            onTap: () {
                              // _showConfirmationDialog(context);
                              setState(() {
                                seoncdboxheight = 40;
                                secondboxwidth = 120;
                                issecondConfirm = false;
                              });
                            },
                            child: issecondConfirm
                                ? const Image(
                                    image:
                                        AssetImage('assets/icons/cancel.png'))
                                : Container()),
                        Container(
                          width: secondboxwidth.h,
                          height: seoncdboxheight.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xffFA9384),
                          ),
                          child: Center(
                              child: Text(
                            "Confirm delete?",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(width: 34.w)
                      ],
                    ),
                  ),

                  SizedBox(height: 10.h),
                  Container(
                    height: 60.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                        color: theme(_).colorScheme.onBackground,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 25.w),
                        const Image(
                            image:
                                AssetImage('assets/icons/more_ver_icon.png')),
                        SizedBox(width: 5.w),
                        const Image(
                            image:
                                AssetImage('assets/icons/more_ver_icon.png')),
                        SizedBox(width: 14.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              title: 'Nature',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              textColor: const Color(0xffE36A79),
                            ),
                            CustomText(
                              title: 'Storm’s a-comin’',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              textColor: const Color(0xff8398F3),
                            )
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: _toggleFavorite,
                          icon: Icon(_isFavorited
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                          color: Color(0xffE36A79),
                        ),
                        SizedBox(width: 34.w)
                      ],
                    ),
                  ),

                  SizedBox(height: 2.h),
                  NatureScreenContainer(
                    title: 'Nature',
                    subTitle: 'Cozy cabin',
                    color: theme(_).colorScheme.onBackground,
                  ),
                  SizedBox(height: 2.h),
                  NatureScreenContainer(
                    title: 'Nature',
                    subTitle: 'White noise',
                    color: theme(_).colorScheme.onBackground,
                  ),
                  SizedBox(height: 2.h),
                  NatureScreenContainer(
                    title: 'Nature',
                    subTitle: '120 Hz  - Health',
                    color: theme(_).colorScheme.onBackground,
                  ),
                ],
              ),
              // Positioned(
              //   top: 330.h,
              //   left: 270.w,
              //   child: Container(
              //     height: 60.w,
              //     width: 60.w,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20.r),
              //         color: const Color(0xffFA9384)),
              //     child: const Center(
              //       child: Image(
              //           image: AssetImage('assets/icons/floatingbuttonicon.png')),
              //     ),
              //   ),
              // )
            ],
          ),
        )),
      );
    });
  }

  ThemeData theme(_) => Theme.of(_);
}
