import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';
import 'package:quran_app/features/quran/data/repos/quran_repo.dart';

part 'ayahs_state.dart';

class AyahsCubit extends Cubit<AyahsState> {
  AyahsCubit(this.quranrepo) : super(AyahsInitial());
  final QuranRepo quranrepo;

  Future<void> getAllAyahsById(int surahNumber) async {
    emit(AyahsLoading());
    final result = await quranrepo.getAllAyahsById(surahNumber);
    result.fold(
      (failure) => emit(AyahsError(errormessage: failure.errorMessage)),
      (ayahList) => emit(AyahsSuccess(ayahList: ayahList)),
    );
  }
}
