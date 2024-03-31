import 'package:flutter/material.dart';
import 'dart:math';

import 'package:smart_fridge/grocery_listings/detected_tags_repository.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  _GroceryScreenState createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  List<String> get uniqueTags => DetectedTagsRepository.instance.tags.toSet().toList();
  final Random _random = Random();

  // Function to generate a random color
  Color getRandomColor() => Color.fromARGB(
        255,
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detected Items in Fridge'),
        backgroundColor: Colors.deepPurple, // Example appBar color
      ),
      body: ListView.builder(
        itemCount: uniqueTags.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: getRandomColor(), // Assign a random color to each tile
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                uniqueTags[index],
                style: TextStyle(
                  color: Colors.white, // Ensure text color contrasts well with the random background color
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}