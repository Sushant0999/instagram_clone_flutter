import 'package:flutter/material.dart';
import 'package:instagram/link/link.dart';
import 'homePage.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  TextStyle tstyle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Activity',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              tbox('Yesterday'),
              userStory('Eliza', MyLink.eliza),
              tbox('This Month'),
              userStory('Kathreine', MyLink.kat),
              tbox('Earlier'),
              userStory('Portman', MyLink.portman),
              userStory('Emma', MyLink.stone),
              userStory('Portman', MyLink.portman),
              userStory('Emma', MyLink.stone),
            ],
          ),
        ),
      ),
    );
  }

  Widget tbox(String s) => Container(
        padding: EdgeInsets.all(15),
        // color: Colors.amber,
        child: Text(
          s,
          style: tstyle,
        ),
      );

  Widget userStory(String name, String link) => Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(6),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 10),
              child: CircleAvatar(
                foregroundImage: NetworkImage(link),
                radius: 30,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 30, maxWidth: 137),
              child: Padding(
                padding: EdgeInsets.only(top: 0, bottom: 0, left: 3),
                child: Text(
                  name + '  Requested to follow you',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
        // decoration: BoxDecoration(
        //   shape: BoxShape.circle,
        //   gradient: LinearGradient(
        //     colors: [
        //       Color(0xffc32aa3),
        //       Color(0xffc32aa3),
        //       Color(0xff4c5fd7),
        //       Color(0xff4c5fd7),
        //       Color(0xff7232bd),
        //       Color(0xfff46f30),
        //       Color(0xffffdc7d),
        //       // Color(0xffFD1D1D),
        //       // Color(0xffF56040),
        //       // Color(0xffF77737),
        //       // Color(0xffFCAF45),
        //       // Color(0xffFFDC80),
        //     ],
        //   ),
        // ),
      );
}
