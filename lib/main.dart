import 'package:flutter/material.dart';
import 'package:quran_app/core/config/cache/get_storage_helper.dart';
import 'package:quran_app/core/helpers/di.dart';
import 'package:quran_app/core/helpers/hive_helper.dart';
import 'package:quran_app/quran_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveHelper.init();
  await GetStorageHelper.initGetStorage();
  setupLocator();
  runApp(const QuranApp());
}
