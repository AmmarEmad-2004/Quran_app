import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card_list.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card_progress_indicator.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card_time.dart';

class NextPrayerCard extends StatelessWidget {
  const NextPrayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p20(context)),
        child: Column(
          spacing: 40,
          children: [
            NextPrayerCardTime(),
            NextPrayerCardProgressIndicator(),
            NextPrayerCardList(),
          ],
        ),
      ),
    );
  }
}

