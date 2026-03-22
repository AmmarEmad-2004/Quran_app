import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart' show AppColors;
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class ContentCurrrentCardInfo extends StatelessWidget {
  const ContentCurrrentCardInfo({super.key, required this.prayer});

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
                  padding: EdgeInsets.all(AppPadding.p12(context)),
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
                            color: AppColors.kWhite.withValues(alpha: 0.68),
                            borderRadius: BorderRadius.circular(999),
                          ),
                        ),
                        if (prayer.subtitle != null) ...[
                          Flexible(
                            child: Text(
                              prayer.subtitle!,
                              textAlign: TextAlign.right,
                              style: AppStyles.regularCairo14(context).copyWith(
                                color: AppColors.kWhite.withValues(alpha: 0.9),
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
                    style: AppStyles.regularCairo12(
                      context,
                    ).copyWith(color: AppColors.kWhite.withValues(alpha: 0.8)),
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
