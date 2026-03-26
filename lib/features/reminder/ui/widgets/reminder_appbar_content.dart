import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';

class ReminderAppbarContent extends StatelessWidget {
  const ReminderAppbarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: AppColors.kWhite, size: 16),
          ),
          Text(
            'التذكيرات',
            style: AppStyles.mediumCairo24(
              context,
            ).copyWith(color: AppColors.kWhite),
          ),
          Spacer(),
          CustomGradientBackground(
            width: 40,
            borderRadius: 50,
            colorGradient1: AppColors.kWhite.withValues(alpha: 0.3),
            colorGradient2: AppColors.kWhite.withValues(alpha: 0.3),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.add, color: AppColors.kWhite, size: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
