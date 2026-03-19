import 'package:flutter/material.dart';

class PrayerModel {
  final String name;
  final String time;
  final String image;
  final Color gradientColor1;
  final Color gradientColor2;

  const PrayerModel({
    required this.name,
    required this.time,
    required this.image,
    required this.gradientColor1,
    required this.gradientColor2,
  });
}
