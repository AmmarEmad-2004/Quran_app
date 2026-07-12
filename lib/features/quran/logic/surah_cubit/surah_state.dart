part of 'surah_cubit.dart';

sealed class SurahState extends Equatable {
  const SurahState();

  @override
  List<Object> get props => [];
}

final class SurahInitial extends SurahState {}
final class SurahLoading extends SurahState {}
final class SurahSuccess extends SurahState {
  final List<SurahModel> surahList;
  final List<SurahModel> filteredList;    
  final SurahFilterType selectedFilter;

  const SurahSuccess({required this.surahList, required this.filteredList, this.selectedFilter = SurahFilterType.all});

    SurahSuccess copyWith({
    List<SurahModel>? filteredList,
    SurahFilterType? selectedFilter,
  }) {
    return SurahSuccess(
      surahList: surahList,
      filteredList: filteredList ?? this.filteredList,
      selectedFilter: selectedFilter ?? this.selectedFilter,
    );
  }
   @override
  List<Object> get props => [surahList, filteredList, selectedFilter];
}
final class SurahError extends SurahState {
  final String errormessage;

  const SurahError({required this.errormessage});
   @override
  List<Object> get props => [errormessage];
}

enum SurahFilterType { all, meccan, medinan }
