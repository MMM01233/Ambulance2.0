import 'package:ambulance_services/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'auth/intro_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return GetMaterialApp(
      builder: (context, child) {
        return MediaQuery(
          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Ambulance Services',
      theme: ThemeData(
        primarySwatch: appThemeColor,
        brightness: Brightness.light,
      ),
      home: IntroScreen(),
    );
  }
}
