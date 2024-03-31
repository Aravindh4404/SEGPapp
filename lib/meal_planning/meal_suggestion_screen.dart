import 'package:flutter/material.dart';

class MealSuggestionScreen extends StatelessWidget {
  final String ingredient;
  final List<String> suggestions;

  MealSuggestionScreen({required this.ingredient, required this.suggestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$ingredient Meal Suggestions'),
      ),
      body: ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          String suggestion = suggestions[index];
          return ListTile(
            title: Text(suggestion),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Recipe for $suggestion:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(height: 4),
                if (suggestion == 'Apple Juice') // Example for "Apple Juice" recipe
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- Peel and chop apples', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('- Blend apples with water', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('- Strain the juice', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('- Serve chilled', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                // Add more recipe details for other suggestions
              ],
            ),
          );
        },
      ),
    );
  }
}
