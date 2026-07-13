import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/widgets/custom_error_item.dart';
import 'package:quran_app/features/quran/logic/ayahs_cubit/ayahs_cubit.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/ayah_item.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class AyahList extends StatelessWidget {
  const AyahList({super.key, required this.surahNumber});
  final int surahNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p16(context)),
      child: BlocBuilder<AyahsCubit, AyahsState>(
        builder: (context, state) {
          if (state is AyahsError) {
            return Center(
              child: CustomErrorItem(
                errorMessage: state.errormessage,
                onRetry: () =>
                    context.read<AyahsCubit>().getAllAyahsById(surahNumber),
              ),
            );
          } else if (state is AyahsSuccess) {
            final ayahs = state.ayahList;
            return ListView.builder(
              itemCount: ayahs.length,
              itemBuilder: (context, index) {
                return AyahItem(ayahModel: ayahs[index]);
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.darkGreen),
            );
          }
        },
      ),
    );
  }
}
