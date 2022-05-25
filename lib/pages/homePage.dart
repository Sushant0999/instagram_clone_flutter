import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/link/link.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle likeText = TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal);
  double posIcon = 25;
  TextStyle commText = TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );
  TextStyle capText = TextStyle(
    color: Colors.grey,
    fontSize: 10,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'image/logo.png',
            color: Colors.white,
            height: 100,
            width: 150,
          ),
          backgroundColor: Colors.black,
          actions: [
            Icon(
              Icons.post_add,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.chat_sharp,
            ),
            SizedBox(
              width: 20,
            ),
          ],
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    userStory1(),
                    userStory('Scarlett',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/Scarlett-Johansson.jpg'),
                    userStory('Jennifer',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/jennifer-lawrence-768x786.jpg'),
                    userStory('Emma',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/Emma-Watson-768x910.jpg'),
                    userStory('Anne',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/anne-hathaway-768x892.jpg'),
                    userStory('Natalie',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/natalie-portman-768x921.jpg'),
                    userStory('Emma',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/emma-stone-768x844.jpg'),
                    userStory('Gal',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/Gal-Gadot-768x866.jpg'),
                    userStory('Alexandra',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/Alexandra-Daddario-768x800.jpg'),
                    userStory('Margot',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/Margot-Robbie-768x873.jpg'),
                    userStory('Megan',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2020/11/Megan-Fox-768x900.jpg'),
                    userStory('Elisha',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2021/02/elisha-cuthbert-768x746.jpg'),
                    userStory('Ellen',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2021/02/ellen-page-768x768.jpg'),
                    userStory('Emilia',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2021/02/emilia-clarke.jpg'),
                    userStory('Rachel',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2021/02/rachel-bilson-768x711.jpg'),
                    userStory('Zoey',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2021/02/Zoey-Deutch-768x872.jpg'),
                    userStory('Kaya',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2021/03/kaya-scodelario-768x891.jpg'),
                    userStory('Kathryn',
                        'https://www.mrdustbin.com/en/wp-content/uploads/2021/03/katheryn-winnick.jpg'),
                  ],
                ),
              ),
              post('Portman', MyLink.portmanPro, MyLink.portman, '45,564',
                  'Caption', '30832'),
              post('Kathrine', MyLink.katPro, MyLink.kat, '99,103', 'Caption',
                  'View all 30832 comments'),
              post('Elzabeth', MyLink.elizaPro, MyLink.eliza, '83,654',
                  'Caption', '8734'),
              post('Emma', MyLink.stonePro, MyLink.stonePro, '45,631',
                  'Caption', '56,342'),
            ],
          ),
        ),
      ),
    );
  }

  Widget userStory1() => Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(6),
            child: Stack(
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage(
                    'image/vik.png',
                  ),
                  radius: 40,
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: -56,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: Icon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
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
          Text(
            'v1king09',
            style: TextStyle(color: Colors.white),
          ),
        ],
      );

  Widget userStory(String name, String link) => Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(6),
            child: Column(
              children: [
                CircleAvatar(
                  // foregroundImage: AssetImage(
                  //   'image/$files.jpg',
                  // ),
                  foregroundImage: NetworkImage(link),
                  radius: 40,
                ),
              ],
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xffc32aa3),
                  Color(0xffc32aa3),

                  Color(0xff4c5fd7),
                  Color(0xff4c5fd7),
                  Color(0xff7232bd),
                  Color(0xfff46f30),
                  Color(0xffffdc7d),
                  // Color(0xffFD1D1D),
                  // Color(0xffF56040),
                  // Color(0xffF77737),
                  // Color(0xffFCAF45),
                  // Color(0xffFFDC80),
                ],
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      );

  Widget post(String name, String userImg, String postImg, String likes,
          String caption, String comment) =>
      Container(
        height: 555,
        color: Colors.black,
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 0, right: 0),
        padding: EdgeInsets.only(top: 5, bottom: 10, left: 0, right: 0),
        width: double.infinity,
        child: Column(
          children: [
            //head
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 15),
                  child: Container(
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(userImg),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 15),
                  child: Text(
                    name,
                    style: likeText,
                  ),
                ),
              ],
            ),
            //image
            Container(
              height: 400,
              child: Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Image.network(
                  postImg,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            //react
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 10),
                  child: Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.red,
                    size: posIcon,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 10),
                  child: Icon(
                    FontAwesomeIcons.solidMessage,
                    color: Colors.white,
                    size: posIcon,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 10),
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                    size: posIcon,
                  ),
                ),
                SizedBox(
                  width: 230,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 3, bottom: 10),
                    child: Icon(
                      FontAwesomeIcons.bookmark,
                      color: Colors.white,
                      size: posIcon,
                    ),
                  ),
                ),
              ],
            ),
            //likes
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  likes + " likes",
                  style: likeText,
                ),
              ),
            ),
            //Caption
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  name,
                  style: likeText,
                ),
              ),
            ),
            //comment
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Text(
                  comment,
                  style: commText,
                ),
              ),
            ),
          ],
        ),
      );
}
