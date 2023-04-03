import 'dart:js';

import 'package:categories/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          "Categories",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon:const Icon(
            Icons.menu,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.pink,
      ),
      body: Screen(context),
    );
  }

  SafeArea Screen(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //box1
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(15, 35, 15, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.purple,
                  ),
                  child:const Text(
                    "Italian",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //box2
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 94, 0),
                  ),
                  child:const Text(
                    "Quick & Easy",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //box3
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 6, 215, 30),
                  ),
                  child:const Text(
                    "Hambergers",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //box1
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(8, 35, 0, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 234, 7, 109),
                  ),
                  child:const Text(
                    "German",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //box2
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(15, 35, 15, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.blue,
                  ),
                  child:const Text(
                    "China",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //box3
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(15, 35, 15, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.yellow,
                  ),
                  child:const Text(
                    "India",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //box1
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(0, 35, 0, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 5, 80, 254),
                  ),
                  child:const Text(
                    "Breakfast",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //box2
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(15, 35, 15, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 248, 110, 198),
                  ),
                  child:const Text(
                    "Asian",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //box3
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(10, 35, 15, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 4, 114, 54),
                  ),
                  child:const Text(
                    "French",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.fromLTRB(0, 35, 0, 0),
                  width: 120,
                  height: 120,
                  decoration:const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromARGB(255, 244, 151, 11),
                  ),
                  child:const Text(
                    "Summer",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            //color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon:const Icon(
                          Icons.star,
                          size: 30,
                        )),
                    const Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon:const Icon(
                          Icons.star,
                          size: 10,
                        )),
                   const Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
