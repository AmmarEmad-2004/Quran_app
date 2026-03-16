import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class CircleBadgeCard extends StatelessWidget {
  const CircleBadgeCard({super.key, required this.child, required this.size});
  final Widget child;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, 0.00),
          end: Alignment(0.50, 1.00),
          colors: [AppColors.lightGreen, AppColors.darkGreen],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33554400),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: -2,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 4),
            spreadRadius: -1,
          ),
        ],
      ),
      child: Center(child: child)
    );
  }
}
