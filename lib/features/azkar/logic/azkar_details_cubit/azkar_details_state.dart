import 'package:equatable/equatable.dart';
import 'package:quran_app/features/azkar/data/models/azkar_detail_model.dart';

sealed class AzkarDetailsState extends Equatable {
  const AzkarDetailsState();

  @override
  List<Object> get props => [];
}

final class AzkarDetailsInitial extends AzkarDetailsState {}

final class AzkarDetailsLoading extends AzkarDetailsState {}

final class AzkarDetailsSuccess extends AzkarDetailsState {
  final List<AzkarDetailModel> azkarDetails;

  const AzkarDetailsSuccess(this.azkarDetails);
  @override
  List<Object> get props => [azkarDetails];
}

final class AzkarDetailsFailure extends AzkarDetailsState {
  final String errorMessage;

  const AzkarDetailsFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}
