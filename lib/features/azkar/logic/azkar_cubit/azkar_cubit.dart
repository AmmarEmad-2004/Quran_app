
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quran_app/features/azkar/data/models/azkar_detail_model.dart';
import 'package:quran_app/features/azkar/data/models/get_azkar_category.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  final AzkarRepo azkarRepo;
  AzkarCubit(this.azkarRepo) : super(AzkarInitial());

  Future<void> loadAzkar() async {
    emit(AzkarLoading());
    var result = await azkarRepo.loadAzkar();
    result.fold(
      (failure) => emit(AzkarFailure(failure.errorMessage)),
      (_) => getAzkarCategories(),    // Emit initial state after loading azkar data
    );
  }

  void getAzkarCategories() {
    var result = azkarRepo.getAzkarCategory();
    return result.fold(
      (failure) =>  emit(AzkarFailure(failure.errorMessage)),
      (categories) => emit(AzkarCategorySuccess(categories)),
    );
  }
}
