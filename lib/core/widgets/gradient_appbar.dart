import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class GradientAppbar extends StatelessWidget {
  const GradientAppbar({super.key, required this.child, required this.height, this.radius});
  final Widget child;
  final double height;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.lightGreen,
            AppColors.lightGreen,
            AppColors.darkGreen,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius ?? 50),
          bottomRight: Radius.circular(radius ?? 50),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }
}
