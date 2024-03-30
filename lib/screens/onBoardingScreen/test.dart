import 'package:flutter/material.dart';
import 'package:nature_sounds/constants/app_theme.dart';
import 'package:nature_sounds/screens/splash_screen.dart';
import 'package:provider/provider.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  void initState() {
    // TODO: implement initState
    print('------------------------------------------------');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: themeNotifier.isDark
                ? ThemeData(
                    brightness: Brightness.dark,
                  )
                : ThemeData(
                    brightness: Brightness.light,
                    primaryColor: Colors.green,
                    primarySwatch: Colors.green),
            debugShowCheckedModeBanner: false,
            home: SplashScreen());
      }),
    ));
  }
}
