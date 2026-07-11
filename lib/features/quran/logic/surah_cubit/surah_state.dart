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

  const SurahSuccess({required this.surahList});
}

final class SurahError extends SurahState {
  final String errormessage;

  const SurahError({required this.errormessage});
}
