import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Icon(
                FontAwesomeIcons.lock,
                size: 20,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'v1king09',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Icon(
                FontAwesomeIcons.add,
                size: 20,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.menu,
                size: 20,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                userStory1(),
                info('1', 'Posts'),
                info('23', 'Followers'),
                info('1', 'Following'),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: Text(
                'v1king09',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 360,
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Icon(
                    Icons.add_card,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget info(String s, String s2) => Column(
        children: [
          Text(
            s,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            s2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )
        ],
      );

  Widget userStory1() => Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(6),
            child: CircleAvatar(
              foregroundImage: AssetImage(
                'image/vik.png',
              ),
              radius: 40,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  // Color(0xff405DE6),
                  // Color(0xff5851D8),
                  // Color(0xff833AB4),
                  // Color(0xffC13584),
                  // Color(0xffE1306C),
                  // Color(0xffFD1D1D),
                  // Color(0xffF56040),
                  // Color(0xffF77737),
                  // Color(0xffFCAF45),
                  // Color(0xffFFDC80),
                  // Color(0xffFFFFFF),
                  Colors.transparent,
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ],
      );
}
