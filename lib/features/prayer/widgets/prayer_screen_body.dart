import 'package:flutter/material.dart';
import 'package:quran_app/features/prayer/widgets/prayer_appbar.dart';
import 'package:quran_app/features/prayer/widgets/prayer_time_cards_list.dart';

class PrayerScreenBody extends StatelessWidget {
  const PrayerScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const PrayerAppbar(),
          Flexible(child: PrayerTimeCardsList()),
        ],
      ),
    );
  }
}
