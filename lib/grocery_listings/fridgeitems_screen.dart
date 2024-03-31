import 'package:flutter/material.dart';
import 'dart:math';

import 'package:smart_fridge/grocery_listings/detected_tags_repository.dart';
import 'package:smart_fridge/meal_planning/home_design_course.dart'; // Import CourseInfoScreen

// Assuming this is in the GroceryScreen Dart file
class GroceryScreen extends StatefulWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  _GroceryScreenState createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  List<String> get uniqueTags => DetectedTagsRepository.instance.tags.toSet().toList();
  final Random _random = Random();

  Color getRandomColor() => Color.fromARGB(
        255,
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
// Inside GroceryScreen
List<String> selectedIngredients = [];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Detected Items in Fridge'),
      actions: [
        IconButton(
          icon: Icon(Icons.check),
          onPressed: () {
            // Pass back selectedIngredients when the check icon is pressed
            Navigator.pop(context, selectedIngredients);
          },
        ),
      ],
    ),
    body: ListView.builder(
      itemCount: uniqueTags.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(uniqueTags[index]),
          onTap: () {
            setState(() {
              if (selectedIngredients.contains(uniqueTags[index])) {
                selectedIngredients.remove(uniqueTags[index]);
              } else {
                selectedIngredients.add(uniqueTags[index]);
              }
            });
          },
          selected: selectedIngredients.contains(uniqueTags[index]),
        );
      },
    ),
  );
}
}