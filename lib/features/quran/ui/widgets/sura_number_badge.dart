import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class SurahNumberBadge extends StatelessWidget {
  final int number;
  const SurahNumberBadge({super.key, required this.number});
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(AppImages.starSuraNumber),
          Text(
            '$number',
            style: AppStyles.regularCairo12(context).copyWith(color: AppColors.darkGreen)
          ),
        ],
      ),
    );
  }
}