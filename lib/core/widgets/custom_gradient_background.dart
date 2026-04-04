import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class CustomGradientBackground extends StatelessWidget {
  const CustomGradientBackground({
    super.key,
    required this.child,
    this.colorGradient1,
    this.colorGradient2,
    this.boderColor,
    this.borderRadius,
    this.borderWidth,
    this.width,
  });
  final Widget child;
  final Color? colorGradient1, colorGradient2, boderColor;
  final double? borderRadius, borderWidth, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorGradient1 ?? AppColors.lightBeige,
            colorGradient2 ?? AppColors.darkBeige,
          ],
        ),
        border: Border.all(
          color: boderColor ?? Colors.transparent,
          width: borderWidth ?? 0.5,
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: Center(child: child),
    );
  }
}
