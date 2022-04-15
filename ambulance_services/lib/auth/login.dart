import 'package:ambulance_services/auth/reset_password.dart';
import 'package:ambulance_services/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'welcome_screen.dart';

class Login extends StatelessWidget {
  Login({Key key}) : super(key: key);
  final password = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Get.off(WellcomeScreen());
              },
              overlayColor: MaterialStateProperty.all<Color>(
                whiteColor.withOpacity(0.25),
              ),
              child: Ink(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: lightYellowColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 0.5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.navigate_before,
                    size: 30,
                    color: fontsDark,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Text(
              'Welcome Back,',
              style: TextStyle(
                color: fontsDark,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Text(
              'We are actually missed you. kindly filled in details.',
              style: TextStyle(
                color: fontsDark,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                    child: Text(
                      'Email Address or Phone Number',
                      style: TextStyle(
                        color: fontsDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                    child: TextField(
                      autocorrect: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: appColorLight, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: appColorLight, width: 2),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: fontsDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                    child: Obx(
                      () {
                        return TextField(
                          autocorrect: true,
                          obscureText: password.value,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            isDense: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: appColorLight, width: 2),
                            ),
                            suffixIcon: MaterialButton(
                              onPressed: () {
                                password.value = !password.value;
                              },
                              child: Text(
                                password.value ? 'Show' : 'Hide',
                                style: TextStyle(
                                  color: fontsDark,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: appColorLight, width: 2),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Text(
                                'Forget Password? ',
                                style: TextStyle(
                                  color: fontsDark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: MaterialButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  Get.to(ResetPassword());
                                },
                                child: Text(
                                  'Reset Here',
                                  style: TextStyle(
                                    color: appColorLight,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(Register());
                },
                child: Text('Continue'),
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
