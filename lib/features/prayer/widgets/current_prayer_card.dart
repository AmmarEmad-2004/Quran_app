import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart' show AppColors;
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';

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
            ContentCardInfo(prayer: prayer),
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

class ContentCardInfo extends StatelessWidget {
  const ContentCardInfo({
    super.key,
    required this.prayer,
  });

  final PrayerTimeModel prayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Row(
            spacing: 6,
            children: [
              CustomGradientBackground(
                sizeWidth: 50,
                borderRadius: 50,
                colorGradient1: AppColors.kWhite.withValues(alpha: 0.3),
                colorGradient2: AppColors.kWhite.withValues(alpha: 0.3),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(prayer.emoji),
                ),
              ),
              Expanded(
                child: Column(
                  spacing: 6,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prayer.nameArabic,
                      textAlign: TextAlign.right,
                      style: AppStyles.mediumCairo16(
                        context,
                      ).copyWith(color: AppColors.kWhite),
                    ),
                    Row(
                      spacing: 6,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 6.3,
                          height: 6.3,
                          decoration: BoxDecoration(
                            color: AppColors.kWhite.withValues(
                              alpha: 0.68,
                            ),
                            borderRadius: BorderRadius.circular(999),
                          ),
                        ),
                        if (prayer.subtitle != null) ...[
                          Flexible(
                            child: Text(
                              prayer.subtitle!,
                              textAlign: TextAlign.right,
                              style: AppStyles.regularCairo14(context)
                                  .copyWith(
                                    color: AppColors.kWhite.withValues(
                                      alpha: 0.9,
                                    ),
                                  ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            spacing: 2,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                prayer.time,
                style: AppStyles.regularCairo30(
                  context,
                ).copyWith(color: AppColors.kWhite),
              ),
              Row(
                spacing: 6,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    prayer.alarmOn ? 'مفعّل' : 'غير\nمفعّل',
                    style: AppStyles.regularCairo12(context).copyWith(
                      color: AppColors.kWhite.withValues(alpha: 0.8),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: prayer.alarmOn
                            ? AppColors.kWhite.withValues(alpha: 0.5)
                            : AppColors.darkGrey,
                      ),
                      child: AnimatedAlign(
                        duration: const Duration(milliseconds: 300),
                        alignment: prayer.alarmOn
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.kWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.kWhite,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
