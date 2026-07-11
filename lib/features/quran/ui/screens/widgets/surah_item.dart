import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/sura_number_badge.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/sura_type.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({super.key, required this.surahModel, this.onTap});
  final SurahModel surahModel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isMadani = surahModel.type == 'Medinan';
    return Padding(
      padding: EdgeInsets.only(bottom: AppPadding.p8(context)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          onTap: onTap,
          leading: SuraType(
            isMadani: isMadani,
          ),

          title: Text(
            surahModel.nameArabic,
            style: AppStyles.regularAmiri20(context),
          ),
          subtitle: Text(
            "آية ${surahModel.ayatCount}. ${surahModel.nameEnglish}",
            textAlign: TextAlign.right,
            style: AppStyles.regularCairo12(
              context,
            ).copyWith(color: AppColors.darkGrey),
          ),
          trailing: SurahNumberBadge(number: surahModel.number),
        ),
      ),
    );
  }
}
