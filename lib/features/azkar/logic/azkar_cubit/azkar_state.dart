part of 'azkar_cubit.dart';

sealed class AzkarState extends Equatable {
  const AzkarState();

  @override
  List<Object> get props => [];
}

final class AzkarInitial extends AzkarState {}

final class AzkarLoading extends AzkarState {}

final class AzkarCategorySuccess extends AzkarState {
  final List<GetAzkarCategory> azkarCategories;

  const AzkarCategorySuccess(this.azkarCategories);
}

final class AzkarDetailsSuccess extends AzkarState {
  final List<AzkarDetailModel> azkarDetails;

  const AzkarDetailsSuccess(this.azkarDetails);
}

final class AzkarFailure extends AzkarState {
  final String errMessage;

  const AzkarFailure(this.errMessage);
}
