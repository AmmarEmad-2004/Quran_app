 import 'package:hive/hive.dart' show Hive;
import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';

void cacheAllSurahs(List<SurahModel> surahList) {
    var surahBox = Hive.box<SurahModel>(KeyConstants.surahBoxName);
    surahBox.addAll(surahList);
  }
