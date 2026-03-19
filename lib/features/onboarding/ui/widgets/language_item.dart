import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/circle_badge_card.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/onboarding/data/models/language_model.dart';

class LanguageItem extends StatelessWidget {
  const LanguageItem({
    super.key,
    required this.isSelected,
    required this.languageModel,
    this.onTap,
  });
  final LanguageModel languageModel;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: CustomGradientBackground(
        colorGradient1: isSelected
            ? AppColors.lightGreen.withValues(alpha: 0.1)
            : AppColors.kWhite,
        colorGradient2: isSelected
            ? AppColors.lightGold.withValues(alpha: 0.05)
            : AppColors.kWhite,
        boderColor: isSelected ? AppColors.lightGreen : Colors.transparent,
        borderRadius: 16,
        width: 2,
        child: ListTile(
          onTap: onTap,
          leading: Image.asset(languageModel.image, fit: BoxFit.contain),
          title: Text(
            languageModel.title,
            style: AppStyles.mediumCairo18(context).copyWith(fontSize: 20),
          ),
          subtitle: Text(
            languageModel.subTitle,
            style: AppStyles.regularCairo14(context),
          ),
          trailing: isSelected
              ? CircleBadgeCard(
                  height: 32,
                  width: 32,
                  child: Icon(Icons.check, color: AppColors.kWhite, size: 16),
                )
              : null,
        ),
      ),
    );
  }
}
