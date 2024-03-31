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
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    suggestion,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                if (suggestion == 'Apple Juice')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Peel and chop apples',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Blend apples with water',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Strain the juice',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Served chilled',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Guacamole')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mash avocados',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add chopped onions, tomatoes, and cilantro',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Squeeze lime juice and mix well',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Season with salt and pepper',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve with tortilla chips',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Avocado Toast')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Toast bread slices',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Spread mashed avocado on toast',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Drizzle olive oil and sprinkle salt and pepper',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Top with cherry tomatoes and basil leaves',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Enjoy!',
                        ),
                      ),
                    ],
                  )
                  else if (suggestion == 'Banana Bread')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for $suggestion:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mash ripe bananas',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mix with flour, sugar, and eggs',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Bake until golden brown',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Banana Ice Cream')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Blend frozen bananas',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add a splash of milk',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Freeze until creamy',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Bean Sprout Stir-Fry')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Stir-fry bean sprouts with garlic and soy sauce',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add vegetables of your choice',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve hot with rice',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Blueberry Muffins')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mix flour, sugar, and blueberries',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add eggs and milk, mix well',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Bake in muffin tin until golden',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Bottled Water')
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Stay hydrated!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                else if (suggestion == 'Brinjal Curry')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Fry brinjal with spices',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Simmer in tomato gravy',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve hot with rice or bread',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Broccoli Salad')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Chop broccoli into bite-sized pieces',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mix with chopped nuts, cranberries, and dressing',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Chill before serving',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Cabbage Rolls')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Fill cabbage leaves with rice and meat mixture',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Roll up and bake with tomato sauce',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve hot',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Cabbage Soup')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Saute cabbage, carrots, and onions',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add broth and simmer until vegetables are tender',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Season with herbs and spices',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Carrot Cake')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mix grated carrots, flour, and sugar',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add eggs, oil, and spices, mix well',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Bake until done, frost with cream cheese icing',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Cherry Pie')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Make pie crust and filling with fresh cherries',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Bake until golden brown',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve warm with vanilla ice cream',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Cornbread')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mix cornmeal, flour, and sugar',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add eggs and milk, mix until smooth',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Bake until golden brown',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Scrambled Eggs')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Beat eggs with a splash of milk',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Cook in a pan with butter, stirring gently',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Season with salt and pepper',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Grape Salad')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mix grapes, walnuts, and honey yogurt',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Chill before serving',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Peanut Butter and Jelly Sandwich')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Spread peanut butter on one slice of bread',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Spread jelly on another slice',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Press slices together and enjoy!',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Kiwi Sorbet')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Blend kiwi with sugar and lemon juice',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Freeze until firm',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Scoop and serve',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Steak')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Season steak with salt and pepper',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Grill to desired doneness',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Let rest before slicing',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Mushroom Risotto')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Saute mushrooms and onions',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add rice and broth, simmer until creamy',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Stir in parmesan cheese and parsley',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Stuffed Mushrooms')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Remove mushroom stems and chop',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Mix with breadcrumbs, cheese, and herbs',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Stuff into mushroom caps, bake until golden',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Pad Thai')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Stir-fry noodles with tofu, shrimp, and vegetables',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add tamarind sauce and peanuts',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Garnish with lime and cilantro',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Spaghetti Bolognese')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Cook spaghetti al dente',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Brown ground beef with onions and garlic',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add tomato sauce and simmer',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve sauce over spaghetti',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Okra Curry')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Saute okra with spices and onions',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add tomato puree and simmer until tender',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Garnish with cilantro and serve with rice',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Orange Chicken')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Coat chicken pieces in batter and fry until crispy',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Make orange sauce with zest and juice',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Toss chicken in sauce and serve hot',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Garlic Butter Prawns')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Saute prawns in garlic butter',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Season with salt, pepper, and parsley',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve hot with crusty bread',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Prawn Curry')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Cook prawns in curry sauce',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add coconut milk and simmer',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Garnish with cilantro and serve with rice',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Quail Egg Salad')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Boil quail eggs until cooked',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Chop eggs and mix with mayo, mustard, and herbs',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve on a bed of lettuce',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Grilled Salmon')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Marinate salmon fillets in herbs and lemon juice',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Grill until fish flakes easily',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve with roasted vegetables',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Sausage Rolls')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Roll puff pastry with sausage meat',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Bake until golden brown',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve hot or cold',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Strawberry Shortcake')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Make shortcakes with flour, sugar, and cream',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Top with fresh strawberries and whipped cream',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Enjoy!',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Strawberry Jam')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Cook strawberries with sugar and lemon juice',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Simmer until thickened',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Store in jars',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Tofu Stir-Fry')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Stir-fry tofu with vegetables and soy sauce',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add garlic and ginger for flavor',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Serve hot with rice or noodles',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Caprese Salad')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Layer sliced tomatoes, mozzarella, and basil leaves',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Drizzle with olive oil and balsamic glaze',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Season with salt and pepper',
                        ),
                      ),
                    ],
                  )
                else if (suggestion == 'Watermelon Feta Salad')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Recipe for [$suggestion]:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Toss watermelon cubes with feta cheese',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Add mint leaves and balsamic glaze',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '- Chill before serving',
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}