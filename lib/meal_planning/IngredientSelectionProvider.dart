import 'package:flutter/material.dart';

class IngredientSelectionProvider with ChangeNotifier {
  List<String> _selectedIngredients = [];

  List<String> get selectedIngredients => _selectedIngredients;

  void addIngredient(String ingredient) {
    if (!_selectedIngredients.contains(ingredient)) {
      _selectedIngredients.add(ingredient);
      notifyListeners();
    }
  }

  void removeIngredient(String ingredient) {
    _selectedIngredients.remove(ingredient);
    notifyListeners();
  }

  void clearIngredients() {
    _selectedIngredients.clear();
    notifyListeners();
  }
}
