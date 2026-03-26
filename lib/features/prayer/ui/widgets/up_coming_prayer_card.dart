import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';
import 'package:quran_app/features/prayer/ui/widgets/content_upcoming_passed_info.dart';

class UpComingPassedPrayerCard extends StatelessWidget {
  const UpComingPassedPrayerCard({super.key, required this.prayer});
  final PrayerTimeModel prayer;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: 0,
      radius: 20,
      cardColor: AppColors.kWhite,
      child: ContentUpcomingPassedCardInfo(prayer: prayer),
    );
  }
}
