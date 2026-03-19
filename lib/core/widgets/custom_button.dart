import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({
    super.key,
    this.onTap,
    required this.text,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.height,
    this.fontSize,
    this.leftIcon,
    this.rightIcon,
    this.radius,
  });
  final VoidCallback? onTap;
  final String text;
  final Color? buttonColor, textColor;
  final IconData? leftIcon, rightIcon;
  final BoxBorder? borderColor;
  final double? height, fontSize, radius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.kBackGround,
          borderRadius: BorderRadius.circular(radius ?? 16),
          border: borderColor ?? Border.all(color: Colors.grey.shade300),
        ),
        height: height ?? 56,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              if (rightIcon != null)
                Icon(rightIcon, color: textColor, size: 16),
              Text(
                text,
                style: AppStyles.mediumCairo24(
                  context,
                ).copyWith(fontSize: fontSize ?? 14, color: textColor),
              ),
              if (leftIcon != null) Icon(leftIcon, color: textColor, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
