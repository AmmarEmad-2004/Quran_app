import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';

class TasbihActiveItem extends StatelessWidget {
  const TasbihActiveItem({super.key, required this.zekr});
  final String zekr;
  @override
  Widget build(BuildContext context) {
    return CustomGradientBackground(
      colorGradient1: AppColors.lightGreen.withValues(alpha: 0.15),
      colorGradient2: AppColors.lightGold.withValues(alpha: 0.001),
      boderColor: AppColors.lightGreen,
      width: MediaQuery.of(context).size.width * 0.42,
      borderRadius: 20,
      borderWidth: 1.5,
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p20(context)),
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(zekr, style: AppStyles.regularAmiri18(context)),
            Container(
              width: 6,
              height: 6,
              decoration: ShapeDecoration(
                color: AppColors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33554400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
