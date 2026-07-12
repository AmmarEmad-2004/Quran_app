
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
      (surahList) => emit(SurahSuccess(
        surahList: surahList,
        filteredList: surahList,
      )),
    );
  }

  void filterSurahs(SurahFilterType filterType) {
    final currentState = state;
    if (currentState is! SurahSuccess) return; 

    List<SurahModel> filtered;
    switch (filterType) {
      case SurahFilterType.all:
        filtered = currentState.surahList;
        break;
      case SurahFilterType.meccan:
        filtered = currentState.surahList
            .where((surah) => surah.type == 'Meccan')
            .toList();
        break;
      case SurahFilterType.medinan:
        filtered = currentState.surahList
            .where((surah) => surah.type == 'Medinan')
            .toList();
        break;
    }

    emit(currentState.copyWith(
      filteredList: filtered,
      selectedFilter: filterType,
    ));
  }

    void searchSurahs(String query) {
    final currentState = state;
    if (currentState is! SurahSuccess) return;

    if (query.trim().isEmpty) {
      emit(currentState.copyWith(filteredList: currentState.surahList));
      return;
    }

    final searched = currentState.surahList.where((surah) {
      return surah.nameArabic.contains(query) ||
          surah.nameEnglish.toLowerCase().contains(query.toLowerCase());
    }).toList();

    emit(currentState.copyWith(filteredList: searched, selectedFilter: SurahFilterType.all,));
  }
}
