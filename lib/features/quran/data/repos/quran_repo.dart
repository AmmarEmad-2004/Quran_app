import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failure.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';

abstract class QuranRepo {
  Future<Either<Failure, List<SurahModel>>> getAllSurahs();
  Future<Either<Failure, List<AyahModel>>> getSurahDetails(int surahNumber);
}