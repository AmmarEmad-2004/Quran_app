import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/constants/azkar_details_list.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/azkar/logic/azkar_details_cubit/azkar_details_cubit.dart';
import 'package:quran_app/features/azkar/logic/azkar_details_cubit/azkar_details_state.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_details_item.dart';

class AzkarDetailsList extends StatelessWidget {
  const AzkarDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocBuilder<AzkarDetailsCubit, AzkarDetailsState>(
        builder: (context, state) {
          if (state is AzkarDetailsFailure) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else if (state is AzkarDetailsSuccess) {
            final azkarDetailsList = state.azkarDetails;
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: azkarDetailsList.length,
            itemBuilder: (context, index) {
              return AzkarDetailsItem(azkarDetail: azkarDetailsList[index]);
            },
          );
        } return const Center(
            child: CircularProgressIndicator(color: AppColors.darkGreen),
          );
        },
      ),
    );
  }
}
