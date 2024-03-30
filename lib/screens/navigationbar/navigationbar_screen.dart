import 'package:flutter/material.dart';
import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_sounds/screens/navbar_icons_icons.dart';
import 'package:nature_sounds/widgits/custom_text_widgit.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:numberpicker/numberpicker.dart';
import '../soundPlayer/add_track_first_screen.dart';
import 'favourate/favourite_screen.dart';
import 'home/home_screen.dart';
import 'mood/mood_screen.dart';
import '../../constants/app_theme.dart';
import 'more/more_screen.dart';

class NvigationBarScreen extends StatefulWidget {
  NvigationBarScreen({super.key, required this.selectedIndex});

  int selectedIndex = 0;
  @override
  State<NvigationBarScreen> createState() => _NvigationBarScreenState();
}

class _NvigationBarScreenState extends State<NvigationBarScreen> {
  final _bottomBarController = BottomBarWithSheetController(initialIndex: 0);
  @override
  void initState() {
    _bottomBarController.stream.listen((opened) {
      debugPrint('Bottom bar ${opened ? 'opened' : 'closed'}');
    });
    super.initState();
  }

  static const List<Widget> _widgetOptions = <Widget>[
    FavouriteScreen(),
    HomeScreen(),
    MoodScreen(),
    MoreScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
  }

  double _currentValue = 50.0;
  int _currentContainerIndex = 0;
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  int _currentTimeValue = 3;
  int _current = 3;

  bool containerheight = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (_, ModelTheme themeNotifier, child) {
      return Scaffold(
        floatingActionButton: widget.selectedIndex == 0
            ? InkWell(
                onTap: () {
                  Get.to(const AddTrackScreenfirst());
                },
                child: Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: const Color(0xffFA9384),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: const Center(
                    child: Image(
                        color: Color(0xff324472),
                        image: AssetImage('assets/icons/createicon.png')),
                  ),
                ),
              )
            : InkWell(
                onTap: () {},
                child: Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: const Color(0xffFA9384),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: const Center(
                    child: Image(
                        image:
                            AssetImage('assets/icons/floatingbuttonicon.png')),
                  ),
                ),
              ),
        backgroundColor: theme(_).colorScheme.background,
        body: Center(
          child: _bottomBarController.isOpened
              ? ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.7), BlendMode.lighten),
                  child: _widgetOptions.elementAt(widget.selectedIndex),
                )
              : _widgetOptions.elementAt(widget.selectedIndex),
        ),
        bottomNavigationBar: Container(
          height: containerheight == false ? 120.h : 400.h,
          decoration: BoxDecoration(
              color: theme(_).colorScheme.onSecondary,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r))),
          child: Column(
            children: [
              const Spacer(),
              BottomBarWithSheet(
                disableMainActionButton: true,
                controller: _bottomBarController,
                bottomBarTheme: BottomBarTheme(
                  height: 580.h,
                  heightOpened: 390.h,
                  heightClosed: 100.h,
                  itemIconSize: 30,
                  mainButtonPosition: MainButtonPosition.left,
                  decoration: BoxDecoration(
                    color: theme(_).colorScheme.onSecondary,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.r)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                  itemIconColor: const Color(0xff8398F3),
                  selectedItemIconColor: const Color(0xffFA9384),
                  itemTextStyle: GoogleFonts.poppins(
                    color: Color(0xff8398F3),
                    fontSize: 10.0,
                  ),
                  selectedItemTextStyle: GoogleFonts.poppins(
                    color: Color(0xffFA9384),
                    fontSize: 10.0,
                  ),
                ),
                onSelectItem: _onItemTapped,
                sheetChild: Column(children: [
                  SizedBox(height: 5.h),
                  GestureDetector(
                    onTap: () {
                      _bottomBarController.toggleSheet();
                      setState(() {
                        containerheight = !containerheight;
                      });
                    },
                    child: containerheight == true
                        ? Container(
                            width: 120.w,
                            height: 8.h,
                            decoration: BoxDecoration(
                                color: const Color(0xff8398F3),
                                borderRadius: BorderRadius.circular(10.r)),
                          )
                        : const SizedBox(),
                  ),
                  SizedBox(height: 10.h),
                  _currentContainerIndex == 0
                      ? _buildMoodContainer()
                      : _currentContainerIndex == 1
                          ? _buildTimerContainer()
                          : _buildDateContainer(),
                ]),
                items: const [
                  BottomBarWithSheetItem(
                      icon: NavbarIcons.group_52, label: 'Favs'),
                  BottomBarWithSheetItem(
                      icon: NavbarIcons.mask_group_1, label: 'Home'),
                  BottomBarWithSheetItem(icon: NavbarIcons.mood, label: 'Mood'),
                  BottomBarWithSheetItem(icon: NavbarIcons.more, label: 'More'),
                ],
              ),
              InkWell(
                  onTap: () {
                    _bottomBarController.toggleSheet();
                    setState(() {
                      containerheight = !containerheight;
                    });
                  },
                  child: containerheight == false
                      ? Container(
                          width: 120.w,
                          height: 8.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff8398F3),
                              borderRadius: BorderRadius.circular(10.r)),
                        )
                      : const SizedBox()),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _buildMoodContainer() {
    return Center(
      child: Container(
        height: 285.h,
        width: 340.w,
        decoration: BoxDecoration(
            color: const Color(0xffE36A79),
            borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  title: 'It’s ',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  textColor: Colors.white,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentContainerIndex = 1;
                    });
                  },
                  child: CustomText(
                    title: '13:45 ',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    textColor: Colors.white,
                  ),
                ),
                CustomText(
                  title: ' on ',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  textColor: Colors.white,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentContainerIndex = 2;
                    });
                  },
                  child: CustomText(
                    title: today.toString().split("")[0] + " March",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            CustomText(
              title: 'Rate your mood on a scale of 0 to 10',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textColor: Colors.white,
            ),
            const Spacer(),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  trackHeight: 1.0,
                  thumbColor: Colors.transparent,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15)),
              child: Slider(
                value: _currentValue,
                min: 0.0,
                max: 100.0,
                onChanged: (double value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
            ),
            SizedBox(height: 47.h),
            InkWell(
              onTap: () {
                _bottomBarController.toggleSheet();
                setState(() {
                  containerheight = !containerheight;
                });
              },
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.w, color: Colors.white),
                    borderRadius: BorderRadius.circular(30.r)),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h)
          ],
        ),
      ),
    );
  }

  Widget _buildTimerContainer() {
    return Container(
      height: 285.h,
      width: 340.w,
      decoration: BoxDecoration(
          color: const Color(0xffE36A79),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15.w, bottom: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentContainerIndex = 0;
                    });
                  },
                  child: const Image(
                      color: Colors.white,
                      image: AssetImage('assets/icons/cancel.png')),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NumberPicker(
                textStyle: GoogleFonts.poppins(
                    color: Colors.white.withOpacity(0.5), fontSize: 40.sp),
                selectedTextStyle:
                    GoogleFonts.poppins(color: Colors.white, fontSize: 40.sp),
                value: _currentTimeValue,
                minValue: 0,
                maxValue: 24,
                onChanged: (value) => setState(() => _currentTimeValue = value),
              ),

              Text(
                ":",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
              NumberPicker(
                selectedTextStyle:
                    GoogleFonts.poppins(color: Colors.white, fontSize: 40.sp),
                textStyle: GoogleFonts.poppins(
                    color: Colors.white.withOpacity(0.5), fontSize: 40.sp),
                value: _current,
                minValue: 0,
                maxValue: 60,
                onChanged: (value) => setState(() => _current = value),
              ),
              // Text('Current value: $_currentValue'),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _currentContainerIndex = 0;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDateContainer() {
    return Container(
      height: 285.h,
      width: 340.w,
      decoration: BoxDecoration(
          color: const Color(0xffE36A79),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, right: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentContainerIndex = 0;
                    });
                  },
                  child: const Image(
                      color: Colors.white,
                      image: AssetImage('assets/icons/cancel.png')),
                )
              ],
            ),
          ),
          TableCalendar(
            calendarStyle: CalendarStyle(
                markerSizeScale: 50,
                weekendTextStyle: GoogleFonts.poppins(color: Colors.white),
                selectedTextStyle: GoogleFonts.poppins(
                  color: Color(0xffE36A79),
                ),
                selectedDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white),
                defaultTextStyle: GoogleFonts.poppins(color: Colors.white)),
            daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: GoogleFonts.poppins(color: Colors.white),
                weekendStyle: GoogleFonts.poppins(color: Colors.white)),
            locale: "en_us",
            rowHeight: 27.h,
            headerStyle: HeaderStyle(
              leftChevronIcon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 15,
              ),
              rightChevronIcon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              titleTextStyle: GoogleFonts.poppins(color: Colors.white),
              formatButtonVisible: false,
              titleCentered: true,
            ),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            onDaySelected: _onDaySelected,
          ),
        ],
      ),
    );
  }

  ThemeData theme(_) => Theme.of(_);
}
