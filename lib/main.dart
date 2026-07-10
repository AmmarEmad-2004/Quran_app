import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/di.dart';
import 'package:quran_app/quran_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const QuranApp());
}
