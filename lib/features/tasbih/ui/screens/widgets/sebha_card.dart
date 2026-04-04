import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/zekr_progress_bar.dart';

class SebhaCard extends StatelessWidget {
  const SebhaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomCard(
        cardColor: AppColors.kWhite,
        borderColor: Colors.transparent,
        radius: 20,
        child: Column(
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
                    AppColors.lightGreen.withValues(alpha: 0.5),
                    AppColors.lightGold.withValues(alpha: 0.5),
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
           
        
          ],
        ),
      ),
    );
  }
}
