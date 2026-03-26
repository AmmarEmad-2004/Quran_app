import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';

class BottomSheetPreviewCard extends StatelessWidget {
  const BottomSheetPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientBackground(
      boderColor: AppColors.lightGreen.withValues(alpha: 0.3),
      colorGradient1: AppColors.kWhite,
      colorGradient2: AppColors.lightBeige,
      borderRadius: 20,
      //  width: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 36,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('معاينة التذكير', style: AppStyles.regularCairo12(context)),
            Row(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomGradientBackground(
                  width: 55,
                  borderRadius: 22,
                  colorGradient1: AppColors.lightGreen,
                  colorGradient2: AppColors.darkGreen,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      AppImages.clockIcon,
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                Text('معاينة التذكير', style: AppStyles.mediumCairo16(context)),
                Spacer(),
                Text(
                  '12:00 ص',
                  textAlign: TextAlign.right,
                  style: AppStyles.regularCairo12(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
