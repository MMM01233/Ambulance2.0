import 'package:ambulance_services/components/constants.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'screens/dashboard.dart';
import 'screens/contacts.dart';
import 'screens/profile.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage;
  @override
  void initState() {
    currentPage = 0;
    super.initState();
  }

  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pagesColor,
      body: currentPage == 0
          ? Dashboard()
          : currentPage == 1
              ? ContactList()
              : currentPage == 2
                  ? ProfileScreen()
                  : Container(),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.phone, title: "Contact"),
          TabData(iconData: Icons.person, title: "Profile")
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}
