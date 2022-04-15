// ignore_for_file: must_be_immutable

import 'package:ambulance_services/auth/welcome_screen.dart';
import 'package:ambulance_services/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key key}) : super(key: key);

  List<Slide> slides = [
    Slide(
      backgroundColor: appThemeColor,
      title: "Save Lives",
      maxLineTitle: 2,
      styleTitle: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      widgetDescription:
          Image(image: AssetImage('assets/images/save_life.png')),
      marginDescription: EdgeInsets.only(left: 20.0, right: 20.0, top: 75.0),
      centerWidget: Padding(
        padding: EdgeInsets.only(
          left: 50.0,
          right: 50.0,
        ),
        child: Text(
          "With this app, you are in the position to save lives during emergancy satuations.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      directionColorBegin: Alignment.topLeft,
      directionColorEnd: Alignment.bottomRight,
      onCenterItemPress: () {},
    ),
    Slide(
      backgroundColor: appThemeColor,
      title: "Get First Aid Kits & Tips",
      maxLineTitle: 2,
      styleTitle: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      widgetDescription: Image(image: AssetImage('assets/images/aid_kit.png')),
      marginDescription: EdgeInsets.only(left: 20.0, right: 20.0, top: 75.0),
      centerWidget: Padding(
        padding: EdgeInsets.only(
          left: 50.0,
          right: 50.0,
        ),
        child: Text(
          "Get access to first aid kits and tips currated by specialist just for you",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      directionColorBegin: Alignment.topLeft,
      directionColorEnd: Alignment.bottomRight,
      onCenterItemPress: () {},
    ),
    Slide(
      backgroundColor: appThemeColor,
      title: "Doctor Easily At Your Reach",
      maxLineTitle: 2,
      styleTitle: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      widgetDescription: Image(image: AssetImage('assets/images/doctor.png')),
      marginDescription: EdgeInsets.only(left: 20.0, right: 20.0, top: 75.0),
      centerWidget: Padding(
        padding: EdgeInsets.only(
          left: 50.0,
          right: 50.0,
        ),
        child: Text(
          "Speak to doctors about your medical issues you are facing without any stress.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      directionColorBegin: Alignment.topLeft,
      directionColorEnd: Alignment.bottomRight,
      onCenterItemPress: () {},
    ),
  ];

  void onDonePress() {
    Get.off(WellcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorLight,
      body: IntroSlider(
        slides: slides,
        renderSkipBtn: Text(
          'Skip',
          style: TextStyle(color: appColorDark),
        ),
        skipButtonStyle: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(whiteColor),
          overlayColor: MaterialStateProperty.all<Color>(lightYellowColor),
        ),
        renderNextBtn: RichText(
          text: TextSpan(
            children: const [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Text(
                  'Next ',
                  style: TextStyle(color: appColorDark),
                ),
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Icon(
                  Icons.navigate_next,
                  color: appColorDark,
                ),
              ),
            ],
          ),
        ),
        nextButtonStyle: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(whiteColor),
          overlayColor: MaterialStateProperty.all<Color>(lightYellowColor),
        ),
        renderDoneBtn: Text(
          'Done',
          style: TextStyle(color: appColorDark),
        ),
        onDonePress: onDonePress,
        doneButtonStyle: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(whiteColor),
          overlayColor: MaterialStateProperty.all<Color>(lightYellowColor),
        ),
        colorDot: whiteColor,
        colorActiveDot: lightYellowColor,
        sizeDot: 14.0,
        hideStatusBar: true,
        backgroundColorAllSlides: appColorLight,
        verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
      ),
    );
  }
}
