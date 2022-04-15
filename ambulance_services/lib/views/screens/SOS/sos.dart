import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'contact.dart';
import 'home.dart';
import 'login.dart';
import 'theme.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SOSScreen());
}

class SOSScreen extends StatefulWidget {
  @override
  _SOSScreenState createState() => _SOSScreenState();
}

class _SOSScreenState extends State<SOSScreen> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> themeChangeProvider,
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, Widget child){
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            title: 'College Companion',
            home: FutureBuilder(
              // Initialize FlutterFire:
              future: _initialization,
              builder: (context, snapshot) {
                // Check for errors
                if (snapshot.hasError) {
                  return Center(child: Text("Error"));
                }

                // Once complete, show your application
                if (snapshot.connectionState == ConnectionState.done) {
                  return Login();
                }

                // Otherwise, show something whilst waiting for initialization to complete
                return Center(child: CircularProgressIndicator());
              },
            ),
            initialRoute: '/',
            routes: {
              '/home': (ctx) => Home(),
              '/contacts': (ctx) => Contacts(),
            },
          );
        },
      )
    );
  }
}
