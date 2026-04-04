import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/circle_badge_card.dart';

 class TasbihCardButton extends StatelessWidget { 
  const TasbihCardButton({super.key, this.onTap, required this.isPressed});
  final VoidCallback? onTap;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedScale(
        scale: isPressed ? 1.08 : 1.0,
        duration: Duration(milliseconds: 80),
        curve: Curves.easeInOut,
        child: CircleBadgeCard(
          height: 128,
          width: 128,
          gradient1: AppColors.lightGreen,
          gradient2: AppColors.lightGold,
          child: Column(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('تسبيح',
                style: AppStyles.mediumCairo24(context)
                    .copyWith(color: AppColors.kWhite)),
              Text('اضغط للعد',
                style: AppStyles.mediumCairo12(context)
                    .copyWith(color: AppColors.kWhite)),
            ],
          ),
        ),
      ),
    );
  }
}