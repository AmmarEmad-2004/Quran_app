import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    this.onTap,
    required this.text,
    this.textColor,
    this.icon,
    this.height,
    this.fontSize,
    this.colorGradient1,
    this.colorGradient2,
    this.image,
  });
  final VoidCallback? onTap;
  final String text;
  final String? image;
  final Color? textColor, colorGradient1, colorGradient2;
  final IconData? icon;
  final double? height, fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorGradient1 ?? AppColors.lightGreen,
              colorGradient2 ?? AppColors.darkGreen,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        height: height ?? 56,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              if (image != null)
                Image.asset(image!, fit: BoxFit.contain, width: 18, height: 18),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  style: AppStyles.mediumCairo24(
                    context,
                  ).copyWith(fontSize: fontSize ?? 14, color: AppColors.kWhite),
                ),
              ),
              Icon(icon, color: textColor, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
