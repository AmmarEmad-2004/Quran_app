import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class CustomStarBackgroundDivider extends StatelessWidget {
  const CustomStarBackgroundDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 64,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.kBlack, AppColors.lightGold, AppColors.kBlack],
        ),
      ),
    );
  }
}