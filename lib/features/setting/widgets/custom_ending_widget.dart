import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomEndingWidget extends StatelessWidget {
  const CustomEndingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.lightGreen, AppColors.darkGreen],
            ),
          ),
          child: Icon(Icons.star, color: AppColors.lightGold, size: 32),
        ),
        SizedBox(height: 12),
        Text(
          'المصحف الشريف',
          style: AppStyles.regularCairo14(
            context,
          ).copyWith(color: AppColors.darkGrey),
        ),
        Text(
          'صُنع بـ ❤️ لخدمة القرآن الكريم',
          style: AppStyles.regularCairo14(
            context,
          ).copyWith(color: AppColors.darkGrey),
        ),
      ],
    );
  }
}