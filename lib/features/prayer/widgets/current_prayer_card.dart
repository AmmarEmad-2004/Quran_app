import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';
import 'package:quran_app/features/prayer/widgets/content_current_card_info.dart';

class CurrentPrayerCard extends StatelessWidget {
  final PrayerTimeModel prayer;

  const CurrentPrayerCard({super.key, required this.prayer});

  @override
  Widget build(BuildContext context) {
    final progress = (prayer.progressPercent ?? 0.45).clamp(0.0, 1.0);
    final remainingPercentage = ((progress * 100).round()).toString();

    return CustomGradientBackground(
      colorGradient1: AppColors.lightGreen,
      colorGradient2: AppColors.darkGreen,
      boderColor: AppColors.lightGold,
      borderRadius: 20,
      width: 2,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            ContentCurrrentCardInfo(prayer: prayer),
            Divider(
              thickness: 0.5,
              color: AppColors.kWhite.withValues(alpha: 0.3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الوقت المتبقي',
                  style: AppStyles.regularCairo14(
                    context,
                  ).copyWith(color: AppColors.kWhite.withValues(alpha: 0.85)),
                ),
                Text(
                  '$remainingPercentage%',
                  style: AppStyles.regularCairo14(
                    context,
                  ).copyWith(color: AppColors.kWhite),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: Stack(
                children: [
                  Container(
                    height: 8,
                    width: double.infinity,
                    color: AppColors.kWhite.withValues(alpha: 0.2),
                  ),
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width * progress * 0.9,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.6),
                          Colors.white,
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

