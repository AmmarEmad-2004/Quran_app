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
    this.height, this.fontSize, this.colorGradient1, this.colorGradient2,
  });
  final VoidCallback? onTap;
  final String text;
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
            colors: [colorGradient1 ?? AppColors.lightGreen, colorGradient2?? AppColors.darkGreen],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        height: height ?? 56,
        child: Center(
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
             // if (image != null) Image.asset(image!, fit: BoxFit.contain),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  style: AppStyles.styleMedium24Cairo(context).copyWith(fontSize: fontSize ?? 14) 
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
