import 'package:categories/Item_meal.dart';
import 'package:categories/Screen_two.dart';
import 'package:categories/list_meals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dummy_data.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _Screen_twoState();
}

class _Screen_twoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ListMeals;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quick & Easy",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.pink,
      ),
      body: tl(args.list),
    );
  }

  Widget tl(List<Meal> list) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Column(children: [
            for (int i = 0; i < list.length; i++)
              ItemMeal(
                  title: list[i].title,
                  imageUrl: list[i].imageUrl,
                  duration: list[i].duration,
                  onPressed: () {})
          ]),
        )
      ],
    );
  }
}
