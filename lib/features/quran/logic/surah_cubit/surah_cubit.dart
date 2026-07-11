
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';
import 'package:quran_app/features/quran/data/repos/quran_repo.dart';

part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit(this.quranrepo) : super(SurahInitial());
  final QuranRepo quranrepo;
  Future<void> getAllSurahs() async {
    emit(SurahLoading());
    final result = await quranrepo.getAllSurahs();
    result.fold(
      (failure) => emit(SurahError(errormessage: failure.errorMessage)),
      (surahList) => emit(SurahSuccess(surahList: surahList)),
    );
  }
}
