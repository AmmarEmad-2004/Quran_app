import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/utils/widgets/custom_error_item.dart';
import 'package:quran_app/features/quran/logic/surah_cubit/surah_cubit.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/surah_item.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class SurahsList extends StatelessWidget {
  const SurahsList({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16(context)),
      child: BlocBuilder<SurahCubit, SurahState>(
        builder: (context, state) {
          if (state is SurahError) {
            return Center(
              child: CustomErrorItem(
                errorMessage: state.errormessage,
                onRetry: () => context.read<SurahCubit>().getAllSurahs(),
              ),
            );
          } else if (state is SurahSuccess) {
            final surahList = state.filteredList;
            return ListView.builder(
              itemCount: surahList.length,
              itemBuilder: (context, index) {
                return SurahItem(
                  surahModel: surahList[index],
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouters.quranDetails,
                      extra: {
                        'surahNumber': surahList[index].number,
                        'surahName': surahList[index].nameArabic,
                        'surahType': surahList[index].type,
                        'ayahCount': surahList[index].ayatCount,
                      },
                    );
                  },
                );
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
