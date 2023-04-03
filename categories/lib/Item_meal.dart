import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
class ItemMeal extends StatelessWidget {
   final String title;
   final String imageUrl;
   final int duration;
   final Function()onPressed;
   final double? width,height;
  const ItemMeal({super.key, required this.title, required this.imageUrl,
   required this.duration, required this.onPressed, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width??MediaQuery.of(context).size.width,
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
        decoration: const BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow:[
            BoxShadow(
              offset: Offset(0, 0),
              color: Colors.black,spreadRadius: 0.5,blurRadius: 0.5
            )
          ] 
        ),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              loadingBuilder:(context,child,loadingProgress){
                return const SizedBox(child: Center(child: CircularProgressIndicator(),));
              }
              ),
              Row(children: [Text(duration.toString())],
              )
          ]),
      ),
    );
  }
}