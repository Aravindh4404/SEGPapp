import 'package:flutter/material.dart';
import 'package:smart_fridge/src/config/themes/app_theme.dart';
// Make sure the paths match your project structure for any custom imports.

Map<String, List<String>> mealSuggestionsMap = {
  'Apple': ['Apple Juice', 'Apple Chips'],
  'Avocado': ['Guacamole', 'Avocado Toast'],
  'Banana': ['Banana Bread', 'Banana Ice Cream'],
  'Bean Sprouts': ['Bean Sprout Stir-Fry', 'Bean Sprout Salad'],
  'Blueberries': ['Blueberry Muffins', 'Blueberry Smoothie'],
  // Continue adding other ingredients and their corresponding meals
  'Watermelon': ['Watermelon Feta Salad', 'Watermelon Juice'],
};

class DesignCourseHomeScreen extends StatefulWidget {
  final List<String> selectedIngredients;

  const DesignCourseHomeScreen({Key? key, required this.selectedIngredients})
      : super(key: key);

  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  List<String> mealSuggestions = [];

  @override
  void initState() {
    super.initState();
    widget.selectedIngredients.forEach((ingredient) {
      if (mealSuggestionsMap.containsKey(ingredient)) {
        mealSuggestions.addAll(mealSuggestionsMap[ingredient]!);
      }
    });
  }

  Widget getMealSuggestionsUI() {
    return mealSuggestions.isEmpty
        ? Center(child: Text('No meal suggestions available.'))
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Meal Suggestions',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: mealSuggestions.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                      title: Text(mealSuggestions[index]),
                    ),
                  );
                },
              ),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Course Home'),
        backgroundColor: AppTheme.nearlyBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            getMealSuggestionsUI(),
            // You can add more UI components here
          ],
        ),
      ),
    );
  }
}
