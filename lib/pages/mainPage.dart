import 'package:flutter/material.dart';
import 'package:instagram/pages/activity.dart';
import 'package:instagram/pages/homePage.dart';
import 'package:instagram/pages/profile.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  double iconSize = 25.0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Search(),
    Reels(),
    Activity(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: iconSize,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.search,
                size: iconSize,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.video,
                size: iconSize,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidHeart,
                size: iconSize,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidUser,
                size: iconSize,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade500,
          backgroundColor: Colors.black,
          onTap: _onItemTapped,
          elevation: 0,
        ),
      ),
    );
  }

  Widget userStory() => Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(
                'image/vik.png',
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xfffeda75),
              Color(0xfffa7e1e),
              Color(0xffd62976),
              Color(0xff962fbf),
              Color(0xff4f5bd5),
            ],
          ),
        ),
      );
}
