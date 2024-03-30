import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nature_sounds/constants/appThemeChanger.dart';
import 'package:nature_sounds/constants/app_theme.dart';
import 'package:nature_sounds/screens/onBoardingScreen/test.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  bool isDarkMode = false;
  runApp(ChangeNotifierProvider(
    create: (_) => ThemeChanger(),
    child: Builder(builder: (BuildContext context) {
      return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MyApp();
        },
      );
    }),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(builder: (context, themeNotifier, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: themeNotifier.isDark
              ? ThemeData(
                  // brightness: Brightness.light,
                  colorScheme: themeNotifier.selecteDarkScheme == 1
                      ? firstDarkScheme
                      : themeNotifier.selecteDarkScheme == 2
                          ? secondDarkScheme
                          : thirdDrkscheme,
                  fontFamily: GoogleFonts.poppins().fontFamily)
              : ThemeData(
                  // brightness: Brightness.dark,
                  colorScheme: themeNotifier.selecteLightScheme == 1
                      ? firstLightScheme
                      : themeNotifier.selecteLightScheme == 2
                          ? secondlightScheme
                          : thirdlightscheme),
          // darkTheme: ,
          debugShowCheckedModeBanner: false,
          home: const Test(),
        );
      }),
    );
  }
}
