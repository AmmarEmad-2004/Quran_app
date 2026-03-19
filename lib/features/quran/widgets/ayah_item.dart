import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/quran/data/models/ayah_model.dart';
import 'package:quran_app/core/widgets/circle_badge_card.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class AyahItem extends StatelessWidget {
  const AyahItem({super.key, required this.ayahModel});
  final AyahModel ayahModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppPadding.p8(context)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: Text(
            ayahModel.ayah,
            style: AppStyles.mediumCairo18(context),
          ),
          trailing: CircleBadgeCard(
            height: 40,
            width: 40,
            child: Text(
             "${ayahModel.number}",
              textAlign: TextAlign.right,
              style: AppStyles.regularCairo16(
                context,
              ).copyWith(color: AppColors.kWhite),
            ),
          ),
        ),
      ),
    );
  }
}
