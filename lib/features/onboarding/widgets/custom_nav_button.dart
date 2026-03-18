import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomNavButton extends StatelessWidget {
  const CustomNavButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.lightGreen, AppColors.darkGreen],
          ),
          borderRadius: BorderRadius.circular(33554400),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          child: Row(
            spacing: 3,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "التالي",
                style: AppStyles.mediumCairo16(
                  context,
                ).copyWith(color: AppColors.kWhite),
              ),
              Icon(Icons.arrow_forward_ios, color: AppColors.kWhite, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
