import 'package:flutter/material.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';

import '../../components/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Card(
              color: whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Icon(Icons.person),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Inamullah Shah',
                            style: TextStyle(
                              color: fontsDark,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: const [
                                TextSpan(
                                  text: 'Account Type: ',
                                  style: TextStyle(
                                    color: fontsDark,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                TextSpan(
                                  text: 'User',
                                  style: TextStyle(
                                    color: fontsDark,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                WebSymbols.user,
                color: appColorLight,
                size: 18,
              ),
              title: Text('Manage Profile'),
              trailing: Icon(
                Icons.navigate_next,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                WebSymbols.cog,
                color: appColorLight,
                size: 18,
              ),
              title: Text('Settings'),
              trailing: Icon(
                Icons.navigate_next,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                WebSymbols.chat,
                color: appColorLight,
                size: 18,
              ),
              title: Text('Messages'),
              trailing: Icon(
                Icons.navigate_next,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Octicons.saved,
                color: appColorLight,
                size: 18,
              ),
              title: Text('Saved Tips'),
              trailing: Icon(
                Icons.navigate_next,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
