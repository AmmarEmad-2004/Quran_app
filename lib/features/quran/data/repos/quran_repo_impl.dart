import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/core/errors/failure.dart';
import 'package:quran_app/core/errors/server_failuer.dart';
import 'package:quran_app/core/networking/api_service.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';
import 'package:quran_app/features/quran/data/repos/quran_repo.dart';

class QuranRepoImpl implements QuranRepo {
  final ApiService apiService;

  QuranRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<SurahModel>>> getAllSurahs() async {
    try {
      var response = await apiService.get(endPoint: KeyConstants.suraEndPoint);
      final surahList = (response['data'] as List)
          .map((surah) => SurahModel.fromJson(surah))
          .toList();
      return Right(surahList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioException(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AyahModel>>> getAllAyahsById(
    int surahNumber,
  ) async {
    try {
      var response = await apiService.get(
        endPoint: '${KeyConstants.suraEndPoint}/$surahNumber',
      );
      final ayahList = (response['data']['ayahs'] as List)
          .map((ayah) => AyahModel.fromJson(ayah))
          .toList();
      return Right(ayahList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioException(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }
}
