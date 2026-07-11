import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/constants/key_constants.dart';
import 'package:quran_app/core/errors/azkar_failure.dart';
import 'package:quran_app/core/errors/failure.dart';
import 'package:quran_app/features/azkar/data/models/azkar_detail_model.dart';
import 'package:quran_app/features/azkar/data/models/get_azkar_category.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo.dart';

class AzkarRepoImpl implements AzkarRepo {
  Map<String, dynamic>? _azkarData;
  @override
  Either<Failure, List<GetAzkarCategory>> getAzkarCategory() {
    try {
    final azkarCategories = _azkarData!.keys
        .map((category) => GetAzkarCategory(category: category))
        .toList();
    return Right(azkarCategories);
  } catch (e) {
    return Left(AzkarFailure(errorMessage: e.toString()));
  }
  }

  @override
  Either<Failure, List<AzkarDetailModel>> getAzkarDetails(String category) {
    try {
      final azkarDetails = (_azkarData![category] as List)
          .map((detail) => AzkarDetailModel.fromJson(detail))
          .toList();
      return Right(azkarDetails);
    } catch (e) {
      return Left(AzkarFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> loadAzkar() async {
    try {
      final azkarJson = await rootBundle.loadString(
        KeyConstants.azkarJsonPath,
      );
      _azkarData = jsonDecode(azkarJson);
      return Right(null);
    } catch (e) {
      return Left(AzkarFailure(errorMessage: e.toString()));
    }
  }
}
