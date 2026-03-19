import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/onboarding/ui/widgets/custom_divider.dart';
import 'package:quran_app/features/onboarding/ui/widgets/custom_item_container.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    this.gradientColor1 = AppColors.lightGreen,
    this.gradientColor2 = AppColors.darkGreen,
    this.borderColor = const Color(0xff248267),
  });
  final String title;
  final String description;
  final String image;
  final Color gradientColor1;
  final Color gradientColor2;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p24(context)),
      child: Column(
        children: [
          CustomItemContainer(
            borderColor: borderColor,
            image: image,
            gradientColor1: gradientColor1,
            gradientColor2: gradientColor2,
          ),
          const SizedBox(height: 48),
          Text(
            title,
            style: AppStyles.mediumCairo36(
              context,
            ).copyWith(color: AppColors.kBlack),
          ),
          const SizedBox(height: 20),
          const CustomDivider(),
          const SizedBox(height: 24),
          Text(
            textAlign: TextAlign.center,
            description,
            style: AppStyles.regularCairo18(
              context,
            ).copyWith(color: AppColors.darkGrey),
          ),
        ],
      ),
    );
  }
}
