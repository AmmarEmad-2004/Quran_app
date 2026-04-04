import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';

class TasbihCardItemFooter extends StatelessWidget {
  const TasbihCardItemFooter({
    super.key,
    required this.label,
    required this.count,
  });
  final String label;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        SizedBox(
          height: 48,
          child: CustomGradientBackground(
            width: 48,
            borderRadius: 40,
            colorGradient1: AppColors.lightGold.withValues(alpha: 0.1),
            colorGradient2: AppColors.lightGreen.withValues(alpha: 0.1),
            child: Text(
              count.toString(),
              style: AppStyles.regularCairo24(context),
            ),
          ),
        ),
        Text(label, style: AppStyles.regularCairo12(context)),
      ],
    );
  }
}
