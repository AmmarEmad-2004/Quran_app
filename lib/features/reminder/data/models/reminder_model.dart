import 'package:flutter/material.dart';

class ReminderModel {
  final String title;
  final DateTime time;
  final String catImage;
  final bool enabled;
  final String repeat;
  final Color color;

  ReminderModel({
    required this.title,
    required this.time,
    required this.catImage,
    required this.enabled,
    required this.repeat,
    required this.color,
  });
}
