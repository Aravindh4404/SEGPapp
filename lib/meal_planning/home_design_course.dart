import 'package:flutter/material.dart';
import 'package:smart_fridge/meal_planning/meal_suggestion_screen.dart';
import 'package:smart_fridge/src/config/themes/app_theme.dart';
import 'package:smart_fridge/grocery_listings/detected_tags_repository.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  const DesignCourseHomeScreen({Key? key}) : super(key: key);

  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  Map<String, List<String>> filteredMealSuggestions = {};

  @override
  void initState() {
    super.initState();
    _filterMealSuggestions();
  }

  void _filterMealSuggestions() {
    List<String> tags = DetectedTagsRepository.instance.tags;
    tags.forEach((tag) {
      if (mealSuggestionsMap.containsKey(tag)) {
        filteredMealSuggestions[tag] = mealSuggestionsMap[tag]!;
      }
    });
  }

  @override
Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.nearlyWhite,
          title: Text(
            'Meal Planner',
            style: TextStyle(color: AppTheme.darkerText, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(
                'Ingredients and Meal Suggestions',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: AppTheme.darkerText,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredMealSuggestions.length,
                  itemBuilder: (context, index) {
                    String ingredient = filteredMealSuggestions.keys.elementAt(index);
                    List<String> suggestions = filteredMealSuggestions[ingredient]!;
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        title: Text(ingredient, style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('Tap to see meal suggestions'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () => moveToMealSuggestions(context, ingredient, suggestions),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void moveToMealSuggestions(BuildContext context, String ingredient, List<String> suggestions) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MealSuggestionScreen(ingredient: ingredient, suggestions: suggestions)));
  }
}


  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Meal Planner',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: AppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

Map<String, List<String>> mealSuggestionsMap = {
  'Apple': ['Apple Juice'],
  'Avocado': ['Guacamole', 'Avocado Toast'],
  'Banana': ['Banana Bread', 'Banana Ice Cream'],
  'Bean Sprouts': ['Bean Sprout Stir-Fry'],
  'Blueberries': ['Blueberry Muffins'],
  'Bottled Water': ['Stay hydrated!'],
  'Brinjal': ['Brinjal Curry'],
  'Broccoli': ['Broccoli Salad'],
  'Cabbage': ['Cabbage Rolls', 'Cabbage Soup'],
  'Carrot': ['Carrot Cake'],
  'Cherries': ['Cherry Pie'],
  'Corn': ['Cornbread'],
  'Egg': ['Scrambled Eggs'],
  'Grapes': ['Grape Salad'],
  'Jam': ['Peanut Butter and Jelly Sandwich'],
  'Kiwi': ['Kiwi Sorbet'],
  'Meat': ['Steak'],
  'Mushroom': ['Mushroom Risotto', 'Stuffed Mushrooms'],
  'Noodles': ['Pad Thai', 'Spaghetti Bolognese'],
  'Okra': ['Okra Curry'],
  'Orange': ['Orange Chicken'],
  'Prawn': ['Garlic Butter Prawns', 'Prawn Curry'],
  'Quail Egg': ['Quail Egg Salad'],
  'Salmon': ['Grilled Salmon'],
  'Sausages': ['Sausage Rolls'],
  'Strawberry': ['Strawberry Shortcake', 'Strawberry Jam'],
  'Tofu': ['Tofu Stir-Fry'],
  'Tomato': ['Caprese Salad'],
  'Watermelon': ['Watermelon Feta Salad'],
  ' ': ['   '],
};