import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart' show AppColors;
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';

class ContentUpcomingPassedCardInfo extends StatelessWidget {
  const ContentUpcomingPassedCardInfo({super.key, required this.prayer});

  final PrayerTimeModel prayer;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: prayer.status == PrayerStatus.passed? 0.50: 1,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Row(
                spacing: 6,
                children: [
                  CustomGradientBackground(
                    sizeWidth: 50,
                    borderRadius: 50,
                    colorGradient1: AppColors.lightGreen.withValues(alpha: 0.1),
                    colorGradient2: AppColors.lightGold.withValues(alpha: 0.1),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(prayer.emoji),
                    ),
                  ),
                  Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        prayer.nameArabic,
                        textAlign: TextAlign.right,
                        style: AppStyles.mediumCairo16(context),
                      ),
                      if (prayer.subtitle != null) ...[
                        Text(
                          prayer.subtitle!,
                          textAlign: TextAlign.right,
                          style: AppStyles.regularCairo14(context).copyWith(
                            color: AppColors.kBlack.withValues(alpha: 0.9),
                          ),
                        ),
                      ],
                    ],
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
                    style: AppStyles.regularCairo30(context),
                  ),
                  Row(
                    spacing: 6,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        prayer.alarmOn ? 'مفعّل' : 'غير\nمفعّل',
                        style: AppStyles.regularCairo12(
                          context,
                        ).copyWith(color: AppColors.kBlack.withValues(alpha: 0.8)),
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
                                ? AppColors.lightGreen
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
                          size: 16,
                        ),
                      ),
                    ],
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
