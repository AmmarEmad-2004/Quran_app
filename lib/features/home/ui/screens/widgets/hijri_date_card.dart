import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';

class HijriDateCard extends StatelessWidget {
  const HijriDateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p16(context)),
      child: Column(
        spacing: 16,
        children: [
          CustomCard(
            elevation: 0,
            radius: 20,
            cardColor: AppColors.kWhite,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: AppPadding.p8(context),
              ),
              child: Row(
                spacing: 12,
                children: [
                  Icon(Icons.location_on_outlined, size: 16),
                  Text(
                    'الرياض، المملكة العربية السعودية',
                    style: AppStyles.regularCairo14(context),
                  ),
                ],
              ),
            ),
          ),
          CustomCard(
            elevation: 0,
            radius: 20,
            cardColor: AppColors.kWhite,
            child: Padding(
              padding: EdgeInsets.all(AppPadding.p16(context)),
              child: Column(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('الثلاثاء', style: AppStyles.regularCairo14(context)),
                  Text(
                    '21 أكتوبر 2025',
                    textAlign: TextAlign.center,
                    style: AppStyles.regularCairo30(context),
                  ),
                  Divider(
                    thickness: 0.4,
                    color: AppColors.darkGrey.withValues(alpha: 0.4),
                    indent: 118,
                    endIndent: 118,
                  ),
                  Text(
                    '28 ربيع الثاني 1447',
                    style: AppStyles.regularCairo14(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
