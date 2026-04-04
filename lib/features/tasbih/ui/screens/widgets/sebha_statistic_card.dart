import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';

class SebhaStatisticCard extends StatelessWidget {
  const SebhaStatisticCard({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: 0,
      cardColor: AppColors.kWhite,
      borderColor: AppColors.lightGrey,
      radius: 24,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.p18(context),
          horizontal: AppPadding.p16(context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: AppStyles.regularCairo12(context)),
            SizedBox(height: AppPadding.p8(context)),
            Text(value, style: AppStyles.mediumCairo18(context).copyWith(color: AppColors.darkGreen)),
          ],
        ),
      ),
    );
  }
}
