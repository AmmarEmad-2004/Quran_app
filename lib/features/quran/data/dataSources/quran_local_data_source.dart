import 'package:hive/hive.dart';
import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart' show AyahModel;
import 'package:quran_app/features/quran/data/models/surah_model.dart';

abstract class QuranLocalDataSource {
  List<SurahModel> getAllSurahs();
  List<AyahModel> getAllAyahsById(int surahNumber);
}

class QuranLocalDataSourceImpl implements QuranLocalDataSource {
  @override
  List<SurahModel> getAllSurahs() {
    var surahBox = Hive.box<SurahModel>(KeyConstants.surahBoxName);
    return surahBox.values.toList();
  }

  @override
  List<AyahModel> getAllAyahsById(int surahNumber) {
    var ayahBox = Hive.box<AyahModel>(KeyConstants.ayahBoxName);
    return ayahBox.values.where((ayah) => ayah.surahNumber == surahNumber).toList();
  }
}