import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomNavButton extends StatelessWidget {
  const CustomNavButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.gradientColor1,
    required this.gradientColor2,
  });
  final String text;
  final VoidCallback onTap;
  final Color gradientColor1;
  final Color gradientColor2;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [gradientColor1, gradientColor2],
          ),
          borderRadius: BorderRadius.circular(33554400),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            spacing: 3,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppStyles.mediumCairo16(
                  context,
                ).copyWith(color: AppColors.kWhite),
              ),
              if (text == "التالي")
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.kWhite,
                  size: 16,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
