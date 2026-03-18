import 'package:flutter/material.dart';
import 'package:quran_app/features/prayer/widgets/prayer_appbar.dart';

class PrayerScreenBody extends StatelessWidget {
  const PrayerScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
      PrayerAppbar(),
    ],),
    );
  }
}