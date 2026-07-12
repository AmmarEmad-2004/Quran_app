import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quran_app/core/errors/failure.dart';
import 'package:quran_app/core/errors/server_failuer.dart';
import 'package:quran_app/features/quran/data/dataSources/quran_local_data_source.dart';
import 'package:quran_app/features/quran/data/dataSources/quran_remote_data_source.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';
import 'package:quran_app/features/quran/data/repos/quran_repo.dart';

class QuranRepoImpl implements QuranRepo {
  final QuranRemoteDataSource quranRemoteDataSource;
  final QuranLocalDataSource quranLocalDataSource;

  QuranRepoImpl(this.quranRemoteDataSource, this.quranLocalDataSource);
  @override
  Future<Either<Failure, List<SurahModel>>> getAllSurahs() async {
    try {
      List<SurahModel> surahList;
      surahList = quranLocalDataSource.getAllSurahs();
      if (surahList.isNotEmpty) return Right(surahList);
      surahList = await quranRemoteDataSource.getAllSurahs();
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
      List<AyahModel> ayahList;
      ayahList = quranLocalDataSource.getAllAyahsById(surahNumber);
      if (ayahList.isNotEmpty) return Right(ayahList);
      ayahList = await quranRemoteDataSource.getAllAyahsById(surahNumber);
      return Right(ayahList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioException(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }
}