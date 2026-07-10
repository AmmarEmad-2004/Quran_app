import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failure.dart';
import 'package:quran_app/features/azkar/data/models/azkar_detail_model.dart';
import 'package:quran_app/features/azkar/data/models/get_azkar_category.dart';

abstract class AzkarRepo {
  Future<Either<Failure, void>> loadAzkar();
  Either<Failure, List<AzkarDetailModel>> getAzkarDetails(String category);
  Either<Failure, List<GetAzkarCategory>> getAzkarCategory();
}
