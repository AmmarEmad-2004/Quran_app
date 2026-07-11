 import 'package:hive/hive.dart' show Hive;
import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';

void cacheAllAyahs(List<AyahModel> ayahList) {
    var ayahBox = Hive.box<AyahModel>(KeyConstants.ayahBoxName);
    ayahBox.addAll(ayahList);
  }