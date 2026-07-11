import 'package:hive_flutter/hive_flutter.dart';
import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';

class HiveHelper {
  static Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(SurahModelAdapter());
    Hive.registerAdapter(AyahModelAdapter());

    await Hive.openBox<SurahModel>(KeyConstants.surahBoxName);
    await Hive.openBox<AyahModel>(KeyConstants.ayahBoxName);
  }
}