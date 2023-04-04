import 'package:flutter/material.dart';

class ItemCategori extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onPressed;
  final double? width, height;

  const ItemCategori(
      {super.key,
      required this.text,
      required this.color,
      required this.onPressed,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width / 4,
        height: height ?? MediaQuery.of(context).size.height * 0.1,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
