// import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dices = [
    "assets/images/d1.png",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
  ];

  int? RandomNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: InkWell(
          onTap: () {
              RandomNumber = Random().nextInt(6);
              print(RandomNumber);
              setState(() {});
            },
          child: Image.asset(
            height: 200,
            width: 200,
            RandomNumber == null 
            ?  "assets/images/button.png" 
            : dices[RandomNumber!],
            ),
        ),
      ),
    );
  }
}
