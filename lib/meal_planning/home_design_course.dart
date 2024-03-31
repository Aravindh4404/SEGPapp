import 'package:flutter/material.dart';
import 'package:smart_fridge/meal_planning/meal_suggestion_screen.dart';
import 'package:smart_fridge/meal_planning/popular_course_list_view.dart';
import 'package:smart_fridge/src/config/themes/app_theme.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
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
  // ' ': ['   '],
};

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  CategoryType categoryType = CategoryType.ui;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ingredients and Meal Suggestions',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          letterSpacing: 0.27,
                          color: AppTheme.darkerText,
                        ),
                      ),
                      SizedBox(height: 12),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: mealSuggestionsMap.length,
                        itemBuilder: (context, index) {
                          String ingredient = mealSuggestionsMap.keys.elementAt(index);
                          List<String> suggestions = mealSuggestionsMap[ingredient] ?? [];
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              title: Text(
                                ingredient,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('Tap to see meal suggestions'),
                              onTap: () {
                                moveToMealSuggestions(context, ingredient, suggestions);
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void moveToMealSuggestions(BuildContext context, String ingredient, List<String> suggestions) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MealSuggestionScreen(ingredient: ingredient, suggestions: suggestions),
      ),
    );
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
}

enum CategoryType {
  ui,
  coding,
  basic,
}
