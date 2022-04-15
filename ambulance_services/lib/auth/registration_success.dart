import 'package:ambulance_services/components/constants.dart';
import 'package:ambulance_services/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationSuccess extends StatelessWidget {
  const RegistrationSuccess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                  child: Text(
                    'Hurray!!!',
                    style: TextStyle(
                      color: fontsDark,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5),
                  child: Text(
                    'You are aider now! Your phone number has been verified.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: fontsDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.symmetric(vertical: 50),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(150),
                    border: Border.all(
                      color: lightYellowColor,
                      width: 5,
                    ),
                  ),
                  child: Container(
                    width: 130,
                    height: 130,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: appColorLight,
                      borderRadius: BorderRadius.circular(130),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: lightYellowColor,
                        size: 100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(Home());
                },
                child: Text('Go to Home'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all<Color>(
                      whiteColor.withOpacity(0.25)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
