// import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_windows_app_1/homepage.dart';
import 'package:flutter_windows_app_1/homepage_fluentstyle.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(360, 640), // mobile
      designSize: const Size(1080, 1920), // desktop
      builder: () {
        return FluentApp(
          home: Builder(
            builder: (context) {
              ScreenUtil.setContext(context);
              return const MediaQuery(
                data: MediaQueryData(textScaleFactor: 1.0),
                // child: HomePage(),
                child: HomePageFluentStyle(),
              );
            },
          ),
        );
      },
    );
  }
}
