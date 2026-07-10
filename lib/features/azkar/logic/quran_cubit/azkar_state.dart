part of 'azkar_cubit.dart';

sealed class AzkarState extends Equatable {
  const AzkarState();

  @override
  List<Object> get props => [];
}

final class AzkarInitial extends AzkarState {}

final class AzkarLoading extends AzkarState {}

final class AzkarCategorySuccess extends AzkarState {
  final List<GetAzkarCategory> surahs;

  const AzkarCategorySuccess(this.surahs);
}

final class AzkarDetailsSuccess extends AzkarState {
  final List<AzkarDetailModel> details;

  const AzkarDetailsSuccess(this.details);
}

final class AzkarFailure extends AzkarState {
  final String errMessage;

  const AzkarFailure(this.errMessage);
}
