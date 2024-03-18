import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data = [
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/five.png",
    "assets/images/six.png",
  ];
  List data1 = [
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/five.png",
    "assets/images/six.png",
  ];
  int select = 0;
  int select1 = 0;

  String value = "";
  String value1 = "";
  int ans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        centerTitle: true,
        title: Text(
          "Dice App",
          style: TextStyle(color: Color(0xffFFFBFE)),
        ),
        backgroundColor: Color(0xff424041),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined,color: Color(0xffFFFBFE),),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.restart_alt,color: Color(0xffFFFBFE),),
            onPressed: () {
            setState(() {
              ans = 00 ;
            });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dice 1",
                    style: TextStyle(
                        color: Color(0xff131313),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 190,
                    height: 65,
                  ),
                  Text(
                    "Dice 2",
                    style: TextStyle(
                        color: Color(0xff131313),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "${value == "" ? "assets/images/img.png" : value}",
                      height: 150,
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "${value1 == "" ? "assets/images/img.png" : value1}",
                          height: 150,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "$ans",
                style: TextStyle(color: Color(0xff2B2B2B), fontSize: 25),
              ),
              SizedBox(
                height: 50,
              ),

              GestureDetector(
                child: Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff424041),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Roll",
                      style: TextStyle(color: Color(0xffFFFBFE), fontSize: 20),
                    ),
                  ),
                ),
                onTap: () {
                  Random r1 = Random();
                  setState(
                        () {
                      select = r1.nextInt(6);
                      value = data[select];

                      select1 = r1.nextInt(6);
                      value1 = data1[select1];
                      print("$select");
                      print("$select1");

                      ans = select+1 + select1+1;

                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
