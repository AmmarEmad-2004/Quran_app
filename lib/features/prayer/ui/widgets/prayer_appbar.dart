import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class PrayerAppbar extends StatelessWidget {
  const PrayerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
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
      ],
    );
  }
}