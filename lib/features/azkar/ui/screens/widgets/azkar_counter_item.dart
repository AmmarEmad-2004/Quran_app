import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class AzkarCounterItem extends StatelessWidget {
  const AzkarCounterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
      decoration: ShapeDecoration(
        color: Colors.white.withValues(alpha: 0.10000000149011612),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),

      child: Column(
        children: [
          Text(
            "1",
            style: AppStyles.regularCairo24(
              context,
            ).copyWith(color: AppColors.kWhite),
          ),
          Text(
            "مكتملة اليوم",
            style: AppStyles.regularCairo12(
              context,
            ).copyWith(color: AppColors.kWhite),
          ),
        ],
      ),
    );
  }
}