import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String subTitle;
  final String image;
  final List<Color> gradientColors;
  const CategoryModel({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.gradientColors,
  });
}