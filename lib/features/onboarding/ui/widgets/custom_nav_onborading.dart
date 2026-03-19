import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/onboarding/ui/widgets/custom_nav_button.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
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
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p24(context), vertical: AppPadding.p24(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              GoRouter.of(context).go(AppRouters.location);
            },
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
                      padding: EdgeInsets.all(AppPadding.p20(context)),
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
