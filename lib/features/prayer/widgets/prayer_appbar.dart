import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/core/widgets/gradient_appbar.dart';

class PrayerAppbar extends StatelessWidget {
  const PrayerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientAppbar(
      height: 0.44,
      radius: 50,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              spacing: 10,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        size: 16,
                        color: AppColors.kWhite,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'مواقيت الصلاة',
                          style: AppStyles.mediumCairo24(
                            context,
                          ).copyWith(color: AppColors.kWhite),
                        ),
                        Text(
                          'أوقات دقيقة حسب موقعك',
                          textAlign: TextAlign.right,
                          style: AppStyles.regularCairo14(context).copyWith(
                            color: AppColors.kWhite.withValues(alpha: 0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings_outlined,
                    size: 16,
                    color: AppColors.kWhite,
                  ),
                ),
              ],
            ),
            CustomCard(
              elevation: 0,
              radius: 20,
              cardColor: AppColors.kWhite.withValues(alpha: 0.10),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Image.asset(AppImages.locationIcon, width: 16, height: 16),
                    Text(
                      'الرياض، المملكة العربية السعودية',
                      style: AppStyles.regularCairo14(context).copyWith(
                        color: AppColors.kWhite.withValues(alpha: 0.9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomCard(
              elevation: 0,
              radius: 20,
              cardColor: AppColors.kWhite.withValues(alpha: 0.10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'الثلاثاء',
                      style: AppStyles.regularCairo14(context).copyWith(
                        color: AppColors.kWhite.withValues(alpha: 0.9),
                      ),
                    ),
                    Text(
                      '21 أكتوبر 2025',
                      textAlign: TextAlign.center,
                      style: AppStyles.regularCairo30(
                        context,
                      ).copyWith(color: AppColors.kWhite),
                    ),
                    Divider(
                      thickness: 0.4,
                      color: AppColors.kWhite.withValues(alpha: 0.4),
                      indent: 118,
                      endIndent: 118,
                    ),
                    Text(
                      '28 ربيع الثاني 1447',
                      style: AppStyles.regularCairo14(context).copyWith(
                        color: AppColors.kWhite.withValues(alpha: 0.9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
