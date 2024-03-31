import 'package:flutter/material.dart';
import 'package:smart_fridge/meal_planning/meal_suggestion_screen.dart';
import 'package:smart_fridge/src/config/themes/app_theme.dart';
import 'package:smart_fridge/grocery_listings/detected_tags_repository.dart'; // Ensure you have this import

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
    // Accessing tags directly from the repository
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
        body: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).padding.top),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Ingredients and Meal Suggestions', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, letterSpacing: 0.27, color: AppTheme.darkerText)),
                      SizedBox(height: 12),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: filteredMealSuggestions.length,
                        itemBuilder: (context, index) {
                          String ingredient = filteredMealSuggestions.keys.elementAt(index);
                          List<String> suggestions = filteredMealSuggestions[ingredient]!;
                          return ListTile(
                            title: Text(ingredient),
                            subtitle: Text('Tap to see meal suggestions'),
                            onTap: () => moveToMealSuggestions(context, ingredient, suggestions),
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
    Navigator.push(context, MaterialPageRoute(builder: (context) => MealSuggestionScreen(ingredient: ingredient, suggestions: suggestions)));
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

// Don't forget to define `mealSuggestionsMap` and `DetectedTagsRepository` if not already defined.



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


// import 'package:flutter/material.dart';
// import 'package:smart_fridge/meal_planning/meal_suggestion_screen.dart';
// import 'package:smart_fridge/src/config/themes/app_theme.dart';

// class DesignCourseHomeScreen extends StatefulWidget {
//   final List<String> detectedIngredients;

//   // Remove the `selectedIngredients` from the constructor if it's not used
//   const DesignCourseHomeScreen({Key? key, required this.detectedIngredients}) : super(key: key);

//   @override
//   _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
// }

// class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // Filter the meal suggestions based on detected ingredients
//     Map<String, List<String>> filteredMealSuggestionsMap = {};
//     for (var ingredient in widget.detectedIngredients) {
//       if (mealSuggestionsMap.containsKey(ingredient)) {
//         filteredMealSuggestionsMap[ingredient] = mealSuggestionsMap[ingredient]!;
//       }
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Meal Planner'),
//         backgroundColor: AppTheme.nearlyBlue, // Ensure AppTheme.nearlyBlue is defined or use a color like Colors.blue
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
//               child: Text(
//                 'Ingredients and Meal Suggestions',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 22,
//                   letterSpacing: 0.27,
//                   color: AppTheme.darkerText, // Ensure AppTheme.darkerText is defined or use a color like Colors.black
//                 ),
//               ),
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: filteredMealSuggestionsMap.length,
//               itemBuilder: (context, index) {
//                 String ingredient = filteredMealSuggestionsMap.keys.elementAt(index);
//                 List<String> suggestions = filteredMealSuggestionsMap[ingredient]!;
//                 return ListTile(
//                   title: Text(ingredient),
//                   subtitle: Text('Tap to see meal suggestions'),
//                   onTap: () => moveToMealSuggestions(context, ingredient, suggestions),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void moveToMealSuggestions(BuildContext context, String ingredient, List<String> suggestions) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => MealSuggestionScreen(ingredient: ingredient, suggestions: suggestions),
//       ),
//     );
//   }
// }



// Map<String, List<String>> mealSuggestionsMap = {
//   'Apple': ['Apple Juice'],
//   'Avocado': ['Guacamole', 'Avocado Toast'],
//   'Banana': ['Banana Bread', 'Banana Ice Cream'],
//   'Bean Sprouts': ['Bean Sprout Stir-Fry'],
//   'Blueberries': ['Blueberry Muffins'],
//   'Bottled Water': ['Stay hydrated!'],
//   'Brinjal': ['Brinjal Curry'],
//   'Broccoli': ['Broccoli Salad'],
//   'Cabbage': ['Cabbage Rolls', 'Cabbage Soup'],
//   'Carrot': ['Carrot Cake'],
//   'Cherries': ['Cherry Pie'],
//   'Corn': ['Cornbread'],
//   'Egg': ['Scrambled Eggs'],
//   'Grapes': ['Grape Salad'],
//   'Jam': ['Peanut Butter and Jelly Sandwich'],
//   'Kiwi': ['Kiwi Sorbet'],
//   'Meat': ['Steak'],
//   'Mushroom': ['Mushroom Risotto', 'Stuffed Mushrooms'],
//   'Noodles': ['Pad Thai', 'Spaghetti Bolognese'],
//   'Okra': ['Okra Curry'],
//   'Orange': ['Orange Chicken'],
//   'Prawn': ['Garlic Butter Prawns', 'Prawn Curry'],
//   'Quail Egg': ['Quail Egg Salad'],
//   'Salmon': ['Grilled Salmon'],
//   'Sausages': ['Sausage Rolls'],
//   'Strawberry': ['Strawberry Shortcake', 'Strawberry Jam'],
//   'Tofu': ['Tofu Stir-Fry'],
//   'Tomato': ['Caprese Salad'],
//   'Watermelon': ['Watermelon Feta Salad'],
//   ' ': ['   '],
// };

// class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
//   CategoryType categoryType = CategoryType.ui;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppTheme.nearlyWhite,
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Column(
//           children: <Widget>[
//             SizedBox(
//               height: MediaQuery.of(context).padding.top,
//             ),
//             getAppBarUI(),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         'Ingredients and Meal Suggestions',
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 22,
//                           letterSpacing: 0.27,
//                           color: AppTheme.darkerText,
//                         ),
//                       ),
//                       SizedBox(height: 12),
//                       ListView.builder(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         itemCount: mealSuggestionsMap.length,
//                         itemBuilder: (context, index) {
//                           String ingredient = mealSuggestionsMap.keys.elementAt(index);
//                           List<String> suggestions = mealSuggestionsMap[ingredient] ?? [];
//                           return ListTile(
//                             title: Text(ingredient),
//                             subtitle: Text('Tap to see meal suggestions'),
//                             onTap: () {
//                               moveToMealSuggestions(context, ingredient, suggestions);
//                             },
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void moveToMealSuggestions(BuildContext context, String ingredient, List<String> suggestions) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => MealSuggestionScreen(ingredient: ingredient, suggestions: suggestions),
//       ),
//     );
//   }

//   Widget getAppBarUI() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   'Meal Planner',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 22,
//                     letterSpacing: 0.27,
//                     color: AppTheme.darkerText,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// enum CategoryType {
//   ui,
//   coding,
//   basic,
// }
