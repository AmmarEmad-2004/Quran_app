import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/core/helpers/di.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';
import 'package:quran_app/quran_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Hive.initFlutter();
  Hive.registerAdapter(SurahModelAdapter());
  Hive.registerAdapter(AyahModelAdapter());
  Hive.openBox<SurahModel>(KeyConstants.surahBoxName);
  Hive.openBox<AyahModel>(KeyConstants.ayahBoxName);

  setupLocator();
  runApp(const QuranApp());
}
