import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class CustomGradientBackground extends StatelessWidget {
  const CustomGradientBackground({super.key, required this.child, this.colorGradient1, this.colorGradient2, this.boderColor});
final Widget child;
final Color?colorGradient1, colorGradient2, boderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [colorGradient1 ?? AppColors.lightBeige, colorGradient2?? AppColors.darkBeige],
        ),
        border: Border.all(color: boderColor ?? Colors.transparent, width: 0.5),
      ),
      child: child,
    );
  }
}