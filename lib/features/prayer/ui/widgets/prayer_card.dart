import 'package:flutter/material.dart';
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';
import 'package:quran_app/features/prayer/ui/widgets/current_prayer_card.dart';
import 'package:quran_app/features/prayer/ui/widgets/up_coming_prayer_card.dart';

class PrayerCard extends StatelessWidget {
  const PrayerCard({super.key, required this.prayer});
  final PrayerTimeModel prayer;
  @override
  Widget build(BuildContext context) {
    return prayer.status == PrayerStatus.current
        ? CurrentPrayerCard(prayer: prayer)
        : UpComingPassedPrayerCard(prayer: prayer);
  }
}
