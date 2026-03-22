import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/quran/data/models/surah_model.dart';
import 'package:quran_app/features/quran/widgets/sura_number_badge.dart';
import 'package:quran_app/features/quran/widgets/sura_type.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class SurahItem extends StatefulWidget {
  const SurahItem({super.key, required this.surahModel, this.onTap});
  final SurahModel surahModel;
  final void Function()? onTap;

  @override
  State<SurahItem> createState() => _SurahItemState();
}

class _SurahItemState extends State<SurahItem> {
  @override
  Widget build(BuildContext context) {
    final isMadani = widget.surahModel.type == 'مدنية';
    return Padding(
      padding: EdgeInsets.only(bottom: AppPadding.p8(context)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          onTap: widget.onTap,
          leading: SuraType(
            suraType: widget.surahModel.type,
            isMadani: isMadani,
          ),

          title: Text(
            widget.surahModel.nameArabic,
            style: AppStyles.mediumCairo18(context),
          ),
          subtitle: Text(
            "آية ${widget.surahModel.ayatCount}. ${widget.surahModel.nameEnglish}",
            textAlign: TextAlign.right,
            style: AppStyles.regularCairo12(
              context,
            ).copyWith(color: AppColors.darkGrey),
          ),
          trailing: SurahNumberBadge(number: widget.surahModel.number),
        ),
      ),
    );
  }
}
