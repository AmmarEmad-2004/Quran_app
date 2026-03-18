import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/onboarding/widgets/custom_nav_button.dart';

class CustomNavOnborading extends StatelessWidget {
  const CustomNavOnborading({
    super.key,
    required this.currentPage,
    required this.nextOnTap,
    required this.previousOnTap,
  });
  final int currentPage;
  final VoidCallback nextOnTap;
  final VoidCallback previousOnTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              "تخطي",
              style: AppStyles.mediumCairo16(
                context,
              ).copyWith(color: AppColors.darkGrey),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 12,
            children: [
              if (currentPage != 0)
                InkWell(
                  onTap: previousOnTap,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffdce8e2), width: 2),
                      borderRadius: BorderRadius.circular(33554400),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.kBlack,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              CustomNavButton(
                gradientColor1: currentPage == 1
                    ? AppColors.lightGold
                    : AppColors.lightGreen,
                gradientColor2: currentPage == 1
                    ? AppColors.darkGold
                    : AppColors.darkGreen,
                text: currentPage == 2 ? "ابدأ الآن" : "التالي",
                onTap: nextOnTap,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
