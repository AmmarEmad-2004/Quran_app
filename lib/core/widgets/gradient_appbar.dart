import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

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
      padding: EdgeInsets.all(AppPadding.p8(context)),
      child: child,
    );
  }
}
