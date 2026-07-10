
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/azkar/data/repos/azkar_repo.dart';
import 'package:quran_app/features/azkar/logic/azkar_details_cubit/azkar_details_state.dart';


class AzkarDetailsCubit extends Cubit<AzkarDetailsState> {
  final AzkarRepo azkarRepo;
  AzkarDetailsCubit(this.azkarRepo) : super(AzkarDetailsInitial());

  void getAzkarDetails(String category) {
    var result = azkarRepo.getAzkarDetails(category);
    return result.fold(
      (failure) => emit(AzkarDetailsFailure(failure.errorMessage)),
      (details) => emit(AzkarDetailsSuccess(details)),
    );
  }
}
