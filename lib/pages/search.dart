import 'package:flutter/material.dart';
import 'package:instagram/link/link.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  BoxFit bFit = BoxFit.fill;
  double wide = 0;
  double high = 0;

  @override
  Widget build(BuildContext context) {
    // double wide = MediaQuery.of(context).size.width;
    // double high = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            search(),
            Expanded(
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  children: [
                    img(MyLink.growAbleList[0]),
                    img(MyLink.growAbleList[1]),
                    img(MyLink.growAbleList[2]),
                    img(MyLink.growAbleList[2]),
                    img(MyLink.growAbleList[1]),
                    img(MyLink.growAbleList[0]),
                    img(MyLink.growAbleList[1]),
                    img(MyLink.growAbleList[2]),
                    img(MyLink.growAbleList[1]),
                    img(MyLink.growAbleList[0]),
                    img(MyLink.growAbleList[2]),
                    img(MyLink.growAbleList[1]),
                    img(MyLink.growAbleList[0]),
                    img(MyLink.growAbleList[2]),
                    img(MyLink.growAbleList[0]),
                    // ),
                    // img(MyLink.post[0]),
                    // img(MyLink.post[1]),
                    // img(MyLink.post[2]),
                    // img(MyLink.post[1]),
                    // img(MyLink.post[1]),
                    // img(MyLink.post[1]),
                    // img(MyLink.post[6]),
                    // img(MyLink.post[7]),
                    // img(MyLink.post[8]),
                    // img(MyLink.post[9]),
                    // img(MyLink.post[10]),
                    // img(MyLink.post[11]),
                    // img(MyLink.post[12]),
                    // img(MyLink.post[13]),
                    // img(MyLink.post[14]),
                    // img(MyLink.post[15]),
                    // img(MyLink.post[16]),
                    // img(MyLink.post[17]),
                    // img(MyLink.post[18]),
                    // img(MyLink.post[19]),
                    // img(MyLink.post[20]),
                    // img(MyLink.post[21]),
                    // img(MyLink.post[22]),
                    // img(MyLink.post[23]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget img(String s) => Container(
        padding: const EdgeInsets.only(bottom: 2, top: 2, left: 2, right: 2),
        child: Image.network(
          s,
          fit: bFit,
        ),
      );

  Widget search() => Container(
        padding: EdgeInsets.all(15),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade700,
          borderRadius: BorderRadius.circular(15),
        ),
        width: double.infinity,
        child: Row(children: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(
            width: 20,
          ),
          Text(
            'Search',
            style: TextStyle(color: Colors.white),
          )
        ]),
      );
}
