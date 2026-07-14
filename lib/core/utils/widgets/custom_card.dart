import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.child,
    this.cardColor,
    this.elevation,
    this.radius,
    this.borderColor,
  });
  final Widget? child;
  final Color? cardColor;
  final double? elevation, radius;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: elevation ?? 6, // درجة الظل
      shadowColor: AppColors.lightGrey.withValues(alpha: 0.4),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? Colors.transparent),
        borderRadius: BorderRadius.circular(radius ?? 24),
      ),
      child: child,
    );
  }
}
