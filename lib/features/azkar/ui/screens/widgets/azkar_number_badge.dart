import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/utils/widgets/circle_badge_card.dart';

class AzkarNumberBadge extends StatelessWidget {
  final String number;
  const AzkarNumberBadge({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return CircleBadgeCard(
      height: 35,
      width: 35,
      gradient1: AppColors.darkOrange,
      gradient2: AppColors.lightOrange,
      child: Text(
        number.toString(),
        textAlign: TextAlign.right,
        style: AppStyles.regularCairo16(
          context,
        ).copyWith(color: AppColors.kWhite),
      ),
    );
  }
}
