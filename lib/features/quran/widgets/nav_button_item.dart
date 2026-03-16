import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class NavButtonItem extends StatelessWidget {
  const NavButtonItem({
    super.key,
    this.onTap,
    required this.text,
    this.colorGradient1,
    this.colorGradient2,
    this.leftIcon,
    this.rightIcon,
    this.fontSize,
    this.radius,
    required this.isSelected,
  });
  final VoidCallback? onTap;
  final String text;
  final Color? colorGradient1, colorGradient2;
  final IconData? leftIcon, rightIcon;
  final double? fontSize, radius;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(
                  begin: Alignment(0.50, 0.00),
                  end: Alignment(0.50, 1.00),
                  colors: [
                    colorGradient1 ?? AppColors.lightGreen,
                    colorGradient2 ?? AppColors.darkGreen,
                  ],
                )
              : null,
          color: isSelected ? null : AppColors.kBackGround,
          borderRadius: BorderRadius.circular(radius ?? 16),
          border: isSelected
              ? Border.all(color: Colors.transparent): Border.all(color: AppColors.darkGrey.withValues(alpha: 0.2))
             ,
        ),
        height: 36,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              if (rightIcon != null)
                Icon(
                  rightIcon,
                  color: isSelected
                      ? AppColors.kWhite
                      : AppColors.darkGrey.withValues(alpha: 0.4),
                  size: 14,
                ),
              Text(
                text,
                style: AppStyles.mediumCairo24(context).copyWith(
                  fontSize: fontSize ?? 14,
                  color: isSelected
                      ? AppColors.kWhite
                      : AppColors.darkGrey.withValues(alpha: 0.4),
                ),
              ),
              if (leftIcon != null)
                Icon(
                  leftIcon,
                  color: isSelected
                      ? AppColors.kWhite
                      : AppColors.darkGrey.withValues(alpha: 0.4),
                  size: 14,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
