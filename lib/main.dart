import 'package:flutter/material.dart';
import 'package:instagram/pages/activity.dart';
import 'package:instagram/pages/homePage.dart';
import 'package:instagram/pages/mainPage.dart';
import 'package:instagram/pages/profile.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      routes: {
        MyRoutes.homePageRoute: (context) => HomePage(),
        MyRoutes.searchRoute: (context) => Search(),
        MyRoutes.reelsRoute: (context) => Reels(),
        MyRoutes.activityRoute: (context) => Activity(),
        MyRoutes.profileRoute: (context) => Profile(),
        MyRoutes.mainPageRoute: (context) => MainPage(),
      },
    );
  }
}
