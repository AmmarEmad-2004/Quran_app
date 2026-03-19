import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_star_background_divider.dart';

class CustomStarBackground extends StatelessWidget {
  const CustomStarBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p26(context)),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.card),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.lightGold, width: 2),
      ),
      child: Column(
        spacing: 15,
        children: [
          Container(
            padding: EdgeInsets.all(AppPadding.p10(context)),
            decoration: BoxDecoration(
              color: AppColors.lightGold,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(Icons.star, color: AppColors.kWhite),
          ),

          Text(
            'آية اليوم',
            style: AppStyles.mediumCairo12(
              context,
            ).copyWith(color: AppColors.darkGrey),
          ),
          CustomStarBackgroundDivider(),
          Text(
            '﴿ وَقُل رَّبِّ زِدۡنِی عِلۡمࣰا ﴾',
            style: AppStyles.regularAmiri24(context),
          ),
          CustomStarBackgroundDivider(),
          Text(
            'سورة طه - الآية 114',
            style: AppStyles.regularCairo14(
              context,
            ).copyWith(color: AppColors.darkGrey),
          ),
        ],
      ),
    );
  }
}
