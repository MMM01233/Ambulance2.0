import 'package:ambulance_services/views/home.dart';
import 'package:ambulance_services/views/screens/SOS/sos.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';

import '../../components/constants.dart';
import '../../components/ripple_effect.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'click button below during emergency',
            style: TextStyle(
              color: fontsDark,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        RipplesAnimation(),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100.0,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: lightYellowColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.35),
                                blurRadius: 5.0,
                                spreadRadius: 2.5,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                FontAwesome5.medkit,
                                size: 35,
                                color: appColorLight,
                              ),
                              Text(
                                'First Aid Tips',
                                style: TextStyle(
                                    color: fontsDark,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: (() {
                            Get.to(SOSScreen());
                          }),
                          child: Container(
                            height: 100.0,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: appColorLight,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.35),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.5,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  FontAwesome5.facebook_messenger,
                                  size: 35,
                                  color: lightYellowColor,
                                ),
                                Text(
                                  'Send SOS Message',
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: appColorLight,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          blurRadius: 5.0,
                          spreadRadius: 2.5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      title: Text(
                        'Get first aid kits and medical supplies affordably',
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                      trailing: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: lightYellowColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.navigate_next_outlined,
                          color: fontsDark,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: appColorLight,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          blurRadius: 5.0,
                          spreadRadius: 2.5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      title: Text(
                        'Got any issue? talk to a medical professional',
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                      trailing: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: lightYellowColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.navigate_next_outlined,
                          color: fontsDark,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: appColorLight,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          blurRadius: 5.0,
                          spreadRadius: 2.5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      title: Text(
                        'Got any issue? talk to a medical professional',
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                      trailing: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: lightYellowColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.navigate_next_outlined,
                          color: fontsDark,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: appColorLight,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          blurRadius: 5.0,
                          spreadRadius: 2.5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      title: Text(
                        'Got any issue? talk to a medical professional',
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                      trailing: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: lightYellowColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.navigate_next_outlined,
                          color: fontsDark,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: appColorLight,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          blurRadius: 5.0,
                          spreadRadius: 2.5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      title: Text(
                        'Got any issue? talk to a medical professional',
                        style: TextStyle(
                          color: whiteColor,
                        ),
                      ),
                      trailing: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: lightYellowColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.navigate_next_outlined,
                          color: fontsDark,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
