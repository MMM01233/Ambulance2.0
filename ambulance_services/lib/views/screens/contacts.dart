import 'package:flutter/material.dart';

import '../../components/constants.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'Saved Contacts',
          style: TextStyle(
            color: fontsDark,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: InkWell(
              onTap: () {},
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
                    Icons.search,
                    size: 20,
                    color: fontsDark,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: InkWell(
                          onTap: () {},
                          overlayColor: MaterialStateProperty.all<Color>(
                            whiteColor.withOpacity(0.25),
                          ),
                          child: Ink(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: fontsDark,
                              ),
                              color: whiteColor,
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
                                Icons.add,
                                size: 20,
                                color: appColorLight,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextSpan(text: '  '),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Text(
                          'Add Contacts',
                          style: TextStyle(
                            color: fontsDark,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                indent: MediaQuery.of(context).size.width * 0.2,
                endIndent: MediaQuery.of(context).size.width * 0.2,
                thickness: 1.5,
                color: Colors.grey[500],
              ),
              ListTile(
                title: Text('Inamullah Shah'),
                subtitle: Text('+92-310-1515486'),
                trailing: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: InkWell(
                          onTap: () {},
                          overlayColor: MaterialStateProperty.all<Color>(
                            whiteColor.withOpacity(0.25),
                          ),
                          child: Ink(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: fontsDark,
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
                                Icons.edit,
                                size: 14,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextSpan(text: '   '),
                      WidgetSpan(
                        child: InkWell(
                          onTap: () {},
                          overlayColor: MaterialStateProperty.all<Color>(
                            whiteColor.withOpacity(0.25),
                          ),
                          child: Ink(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: appColorLight,
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
                                Icons.close,
                                size: 14,
                                color: whiteColor,
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
          ),
        ),
      ),
    );
  }
}
