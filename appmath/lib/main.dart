import 'package:appmath/maths/freakingmath.dart';
import 'package:flutter/material.dart';
import 'lib/maths/freakingmath.dart' ;
void main() {
  runApp(math());
}
 class math extends StatefulWidget {
  const math({super.key});

  @override
  State<math> createState() => _mathState();
}

class _mathState extends State<math> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:freaking(),
      )
     
      
    );
  }
}


