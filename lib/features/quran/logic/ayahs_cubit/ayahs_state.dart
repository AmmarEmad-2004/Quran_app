part of 'ayahs_cubit.dart';

sealed class AyahsState extends Equatable {
  const AyahsState();

  @override
  List<Object> get props => [];
}

final class AyahsInitial extends AyahsState {}
final class AyahsLoading extends AyahsState {}
final class AyahsSuccess extends AyahsState {
  final List<AyahModel> ayahList;

  const AyahsSuccess({required this.ayahList});
    @override
  List<Object> get props => [ayahList];
}
final class AyahsError extends AyahsState {
  final String errormessage;

  const AyahsError({required this.errormessage});
    @override
  List<Object> get props => [errormessage];
}
