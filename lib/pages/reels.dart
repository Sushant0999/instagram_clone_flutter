import 'package:flutter/material.dart';
import 'package:instagram/link/link.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    double wide = MediaQuery.of(context).size.width;
    double high = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          height: high,
          width: wide,
          child: Center(
            child: reel(),
          ),
        ),
      ),
    );
  }

  Widget reel() => Container(
        child: Text('Reels'),
      );
}
