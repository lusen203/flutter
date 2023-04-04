import 'dart:js';

import 'package:categories/Item_categories.dart';
import 'package:categories/Item_meal.dart';
import 'package:categories/dummy_data.dart';
import 'package:categories/list_meals.dart';
import 'package:categories/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
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
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              for (int i = 0; i < DUMMY_CATEGORIES.length; i++)
                ItemCategori(
                    text: DUMMY_CATEGORIES[i].title,
                    color: DUMMY_CATEGORIES[i].color,
                    onPressed: () {
                      List<Meal> temp = [];
                      for (int j = 0; j < DUMMY_MEALS.length; j++) {
                        if (DUMMY_MEALS[j]
                            .categories
                            .contains(DUMMY_CATEGORIES[i].id)) {
                          temp.add(DUMMY_MEALS[i]);
                        }
                      }
                      Navigator.popAndPushNamed(context, "/detail",
                          arguments: ListMeals(temp));
                    })
            ],
          )
        ]),
      ),
    );
  }
}
