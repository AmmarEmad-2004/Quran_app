
import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFFF8904), Color(0xFFFE9A00)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.azkarSabah),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "أذكار الصباح",
                    style: AppStyles.mediumCairo18(
                      context,
                    ).copyWith(color: AppColors.kWhite),
                  ),
                  Text(
                    "5 ذكر ",
                    style: AppStyles.regularCairo14(
                      context,
                    ).copyWith(color: AppColors.kWhite.withValues(alpha: 0.8)),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kWhite,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
