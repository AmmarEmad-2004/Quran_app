import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String subTitle;
  final String image;
  final Color gradientColor1;
  final Color gradientColor2;
  const CategoryModel({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.gradientColor1,
    required this.gradientColor2,
  });
}