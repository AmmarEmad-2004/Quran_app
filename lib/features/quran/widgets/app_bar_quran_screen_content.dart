import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_text_feild.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class AppBarQuranScreenContent extends StatelessWidget {
  const AppBarQuranScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p16(context)),
      child: Column(
        spacing: 16,
        children: [
        Row(
          children: [
             Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 16,
              ),
              Spacer(),
             Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'القرآن الكريم',
                  style: AppStyles.mediumCairo24(context).copyWith(color: AppColors.kWhite),
                ),
                Text(
                  '114 سورة',
                  style: AppStyles.regularCairo14(context).copyWith(color: AppColors.kWhite.withValues(alpha: 0.8))
                ),
              ],
            ),
            Spacer(),
          ],
        ),
       CustomTextField(
                hint: 'ابحث عن سورة...',
                icon:  Icon(Icons.search, color: AppColors.kWhite.withValues(alpha: 0.6)),
              ),
      ],),
    );
  }
}