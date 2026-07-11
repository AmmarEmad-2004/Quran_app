import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/core/networking/api_service.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';

abstract class QuranRemoteDataSource {
  Future<List<SurahModel>> getAllSurahs();
  Future<List<AyahModel>> getAllAyahsById(int surahNumber);
}


class QuranRemoteDataSourceImpl implements QuranRemoteDataSource {
  final ApiService apiService;

  QuranRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<SurahModel>> getAllSurahs() async {
     var response = await apiService.get(endPoint: KeyConstants.suraEndPoint);
      final surahList = (response['data'] as List)
          .map((surah) => SurahModel.fromJson(surah))
          .toList();
    return surahList;
  }

  @override
  Future<List<AyahModel>> getAllAyahsById(int surahNumber) async {
    var response = await apiService.get(
      endPoint: '${KeyConstants.suraEndPoint}/$surahNumber',
    );
    final ayahList = (response['data']['ayahs'] as List)
        .map((ayah) => AyahModel.fromJson(ayah, surahNumber))
        .toList();
    return ayahList;
  }
}
