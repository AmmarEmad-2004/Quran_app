import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/prayer_time_list_demo.dart';
import 'package:quran_app/features/prayer/ui/widgets/prayer_card.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class PrayerTimeCardsList extends StatelessWidget {
  const PrayerTimeCardsList( {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16(context)),
      child: ListView.builder(
        shrinkWrap: true,       
  physics: NeverScrollableScrollPhysics(),
        itemCount: prayerTimes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: AppPadding.p8(context)),
            child: PrayerCard(prayer: prayerTimes[index]),
          );
        },
      ),
    );
  }
}
