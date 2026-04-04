import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/circle_badge_card.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_card_footer.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_card_item_footer.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/zekr_progress_bar.dart';

class SebhaCard extends StatelessWidget {
  const SebhaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p20(context)),
      child: SizedBox(
        width: double.infinity,
        child: CustomCard(
          cardColor: AppColors.kWhite,
          borderColor: Colors.transparent,
          elevation: 8,
          radius: 20,
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p20(context)),
            child: Column(
              spacing: 12,
              children: [
                Text(
                  'سبحان الله',
                  style: AppStyles.regularAmiri30(
                    context,
                  ).copyWith(color: AppColors.lightGreen),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.lightGreen.withValues(alpha: 0.2),
                        AppColors.lightGold.withValues(alpha: 0.1),
                      ],
                    ),
                    border: Border.all(color: AppColors.lightGreen, width: 6),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: AppPadding.p40(context),
                      horizontal: AppPadding.p60(context),
                    ),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('20', style: AppStyles.regularCairo72(context)),
                        Text('من 33', style: AppStyles.regularCairo14(context)),
                        SizedBox(width: 64, child: ZekrProgressbar()),
                      ],
                    ),
                  ),
                ),
                CircleBadgeCard(
                  height: 128,
                  width: 128,
                  gradient1: AppColors.lightGreen,
                  gradient2: AppColors.lightGold,
                  child: Column(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تسبيح',
                        style: AppStyles.mediumCairo24(
                          context,
                        ).copyWith(color: AppColors.kWhite),
                      ),
                      Text(
                        'اضغط للعد',
                        style: AppStyles.mediumCairo12(
                          context,
                        ).copyWith(color: AppColors.kWhite),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                  color: AppColors.lightGreen.withValues(alpha: 0.1),
                ),
                TasbihCardFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
