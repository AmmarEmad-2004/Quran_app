import 'package:flutter/material.dart';
import 'package:quran_app/features/prayer/ui/widgets/prayer_appbar.dart';
import 'package:quran_app/features/prayer/ui/widgets/prayer_time_cards_list.dart';

class PrayerScreenBody extends StatelessWidget {
  const PrayerScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const PrayerAppbar(),
          Flexible(child: PrayerTimeCardsList())
        ],
      ),
    );
  }
}




// final screenHeight = MediaQuery.of(context).size.height;
//     final appBarHeight = screenHeight * 0.44;
// Positioned.fill(
          //   top: appBarHeight - 20,
          //   left: 0,
          //   right: 0,
          //   bottom: 0,
          //   child: SizedBox.expand(child: PrayerTimeCardsList()),
          // ),