import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/quran/widgets/status_card.dart';

class StatusCardRow extends StatelessWidget {
  const StatusCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          spacing: 10,
          children: [
           Expanded(
              child: StatusCard(
              image: AppImages.surahIcon,
                value: '114',
                label: 'سورة',
              ),
            ),
            Expanded(
              child: StatusCard(
                image: AppImages.star,
                value: '6236',
                label: 'آية',
               colorGradient1: AppColors.lightGold.withValues(alpha: 0.1),
               colorGradient2: AppColors.lightBeige.withValues(alpha: 0.2),
               boderColor: AppColors.lightGold.withValues(alpha: 0.2),
               valueColor: AppColors.lightGold,
              ),
            ),  
             Expanded(
              child: StatusCard(
                image: AppImages.mark,
                value: '604',
                label: 'صفحة',
              ),
            ),
          ],
        ),
      );
  }
}