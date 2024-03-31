import 'package:flutter/material.dart';

class OnboardingModel {
  final String title;
  final String description;
  final String? no;
  final List<Color> bgColors;

  OnboardingModel({
    required this.title,
    required this.description,
    this.no,
    required this.bgColors,
  });
}