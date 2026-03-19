import 'package:flutter/material.dart';

class ReminderModel {
  final String title;
  final String time;
  final String catImage;
  final bool enabled;
  final String timeOfDay;
  final String repeat;
  final bool isActive;
  final Color color;

  ReminderModel({
    required this.title,
    required this.time,
    required this.catImage,
    required this.enabled,
    required this.timeOfDay,
    required this.repeat,
    required this.isActive,
    required this.color,
  });
}
