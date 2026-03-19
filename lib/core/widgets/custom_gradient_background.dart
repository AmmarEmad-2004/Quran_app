import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class CustomGradientBackground extends StatelessWidget {
  const CustomGradientBackground({
    super.key,
    required this.child,
    this.colorGradient1,
    this.colorGradient2,
    this.boderColor, this.borderRadius, this.width, this.sizeWidth,
  });
  final Widget child;
  final Color? colorGradient1, colorGradient2, boderColor;
  final double? borderRadius, width, sizeWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:sizeWidth?? double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorGradient1 ?? AppColors.lightBeige,
            colorGradient2 ?? AppColors.darkBeige,
          ],
        ),
        border: Border.all(color: boderColor ?? Colors.transparent, width:width?? 0.5),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: child,
    );
  }
}
