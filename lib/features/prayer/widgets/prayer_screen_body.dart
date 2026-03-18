import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';
import 'package:quran_app/features/prayer/widgets/current_prayer_card.dart';
import 'package:quran_app/features/prayer/widgets/prayer_appbar.dart';

class PrayerScreenBody extends StatelessWidget {
  const PrayerScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrayerAppbar(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: CurrentPrayerCard(
                prayer: const PrayerTimeModel(
                  nameArabic: 'الظهر',
                  time: '12:30',
                  emoji: AppImages.zuhrIandAsrcon,
                  status: PrayerStatus.current,
                  subtitle: 'بعد ساعة و 15 دقيقة',
                  progressPercent: 0.45,
                  alarmOn: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
