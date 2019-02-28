import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_tablayout/splash_page.dart';
import 'package:flutter_app_tablayout/get_measurements_page.dart';
import 'package:flutter_app_tablayout/instruction_page.dart';
import 'package:flutter_app_tablayout/show_measurements_page.dart';
import 'package:flutter_app_tablayout/user_detail_page.dart';

void main() => runApp(new MyApp());

// This app is a stateful, it tracks the user's current choice.
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: defaultTargetPlatform == TargetPlatform.iOS
                ? Colors.grey[50]
                : null), //Theme Data
        home: new MySplashScreen(),
        routes: <String, WidgetBuilder>{
          GetMeasurementsPage.tag: (context) => GetMeasurementsPage(),
          InstructionPage.tag: (context) => InstructionPage(),
          ShowMeasurementsPage.tag: (context) => ShowMeasurementsPage(),
          MySplashScreen.tag: (context) => MySplashScreen(),
          UserDetailPage.tag: (context) => UserDetailPage()
        }); //Material App
  }
}


