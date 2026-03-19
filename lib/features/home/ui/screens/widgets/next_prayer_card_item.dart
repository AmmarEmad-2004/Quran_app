import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/home/data/models/prayer_model.dart';

class NextPrayerCardItem extends StatelessWidget {
  const NextPrayerCardItem({super.key, required this.prayer});

  final PrayerModel prayer;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Container(
          padding: EdgeInsets.all(AppPadding.p8(context)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [prayer.gradientColor1, prayer.gradientColor2],
            ),
          ),
          child: Image.asset(prayer.image, height: 16, width: 16),
        ),
        Text(
          prayer.name,
          style: AppStyles.regularCairo12(
            context,
          ).copyWith(color: AppColors.darkGrey),
        ),
        Text(
          prayer.time,
          style: AppStyles.mediumCairo12(
            context,
          ).copyWith(color: AppColors.kBlack),
        ),
      ],
    );
  }
}
