import 'package:categories/Screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
class Screen_two extends StatefulWidget {
  const Screen_two({super.key});

  @override
  State<Screen_two> createState() => _Screen_twoState();
}

class _Screen_twoState extends State<Screen_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Quick & Easy",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.pink,
        ),

        body: tl(),
    );
  }

  Container tl(){
    return Container(
      width: 390,
      height: 60,
      color: Colors.pink,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [
          Column(
           children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.star,size: 10,)),
            Text("Categories",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),)
           ], 
          ),
           Column(
           children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.star,size: 10,)),
            Text("Categories",style: TextStyle(color: Colors.blue,fontSize: 10,fontWeight: FontWeight.bold),)
           ], 
          )
        ],
       ),
    );
  }
}