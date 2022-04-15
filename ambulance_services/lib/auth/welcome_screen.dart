import 'package:ambulance_services/auth/login.dart';
import 'package:ambulance_services/auth/register_screen.dart';
import 'package:ambulance_services/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pagesColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: const [
                TextSpan(
                  text: 'Welcome to\n',
                  style: TextStyle(
                    color: fontsDark,
                    fontSize: 24,
                    height: 5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: 'AMBULANCES ',
                  style: TextStyle(
                    color: appColorLight,
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: 'SERVICES',
                  style: TextStyle(
                    color: fontsDark,
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.radio_button_checked,
                      color: appColorLight,
                    ),
                    title: Text(
                      'Be a hero, save lives',
                      style: TextStyle(
                        color: fontsDark,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.radio_button_checked,
                      color: appColorLight,
                    ),
                    title: Text(
                      'Get first aid kits & tips',
                      style: TextStyle(
                        color: fontsDark,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.radio_button_checked,
                      color: appColorLight,
                    ),
                    title: Text(
                      'Get doctor easily with a click',
                      style: TextStyle(
                        color: fontsDark,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.radio_button_checked,
                      color: appColorLight,
                    ),
                    title: Text(
                      'Send SOS message easily during emergencies',
                      style: TextStyle(
                        color: fontsDark,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.radio_button_checked,
                      color: pagesColor,
                    ),
                    title: Text(
                      'and many more...',
                      style: TextStyle(
                        color: fontsDark,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(Register());
                },
                child: Text('Join Us'),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(Login());
                },
                child: Text('Login to your Account'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(whiteColor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(appColorLight),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: appColorLight),
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                      appColorLight.withOpacity(0.25)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
