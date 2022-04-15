import 'package:ambulance_services/auth/registration_success.dart';
import 'package:ambulance_services/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

// ignore: must_be_immutable
class OTPVerify extends StatelessWidget {
  OTPVerify({Key key}) : super(key: key);
  final pinPutController = TextEditingController();
  final pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.transparent,
    border: Border.all(color: appColorLight, width: 2),
    borderRadius: BorderRadius.circular(10.0),
  );
  String pin = '';
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
                Get.back();
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
              'Kindly verify your number',
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
              'A text message contains 6-digit of code has been sent to your registered number/email address, Kindly fill in:',
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
                      'Enter 6 digit code',
                      style: TextStyle(
                        color: fontsDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: PinPut(
                      fieldsCount: 6,
                      withCursor: true,
                      fieldsAlignment: MainAxisAlignment.spaceBetween,
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                        color: fontsDark,
                      ),
                      eachFieldWidth: 50.0,
                      eachFieldHeight: 50.0,
                      onChanged: (value) {
                        pin = value;
                      },
                      focusNode: pinPutFocusNode,
                      controller: pinPutController,
                      submittedFieldDecoration: pinPutDecoration,
                      selectedFieldDecoration: pinPutDecoration,
                      followingFieldDecoration: pinPutDecoration,
                      pinAnimationType: PinAnimationType.fade,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: const [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Text(
                                'Don\'t get code? ',
                                style: TextStyle(
                                  color: fontsDark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Text(
                                '0:00',
                                style: TextStyle(
                                  color: appColorLight,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Text(
                        'I want to change the number',
                        style: TextStyle(
                          color: fontsDark,
                          decoration: TextDecoration.underline,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(RegistrationSuccess());
                },
                child: Text('Verify Number'),
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
