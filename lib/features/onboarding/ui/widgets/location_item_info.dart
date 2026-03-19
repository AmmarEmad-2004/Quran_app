import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/onboarding/data/models/language_model.dart';

class LocationItemInfo extends StatelessWidget {
  const LocationItemInfo({super.key, required this.languageModel});
  final LanguageModel languageModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: CustomCard(
        child: ListTile(
          leading:CustomGradientBackground(
            sizeWidth: 48,
            borderRadius: 40,
            colorGradient1: AppColors.lightGreen.withValues(alpha: 0.1),
            colorGradient2: AppColors.lightGold.withValues(alpha: 0.1),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(languageModel.image, width: 20, height: 20),
            )) ,
          title: Text(
            languageModel.title,
            style: AppStyles.mediumCairo18(context).copyWith(fontSize: 20),
          ),
          subtitle: Text(
            languageModel.subTitle,
            style: AppStyles.regularCairo14(context),
          ),
        ),
      ),
    );
  }
}
