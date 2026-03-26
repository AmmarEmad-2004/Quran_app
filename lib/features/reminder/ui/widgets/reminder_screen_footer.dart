import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';

class ReminderScreenFooter extends StatelessWidget {
  const ReminderScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientBackground(
      boderColor: AppColors.lightGold,
      borderRadius: 20,
      borderWidth: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomGradientBackground(
              width: 50,
              borderRadius: 60,
              colorGradient1: AppColors.lightGold,
              colorGradient2: AppColors.lightGold,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(AppImages.ideaIcon, width: 25, height: 25),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('نصيحة', style: AppStyles.mediumCairo18(context)),
                  Text(
                    'المداومة على الأذكار اليومية تجلب السكينة والطمأنينة للقلب. احرص على تفعيل التذكيرات لتبقى على اتصال دائم بالله.',
                    style: AppStyles.regularCairo14(context),
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
