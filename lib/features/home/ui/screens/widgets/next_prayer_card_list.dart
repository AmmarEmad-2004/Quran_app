import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/home_prayer_time_list.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card_item.dart';

class NextPrayerCardList extends StatelessWidget {
  const NextPrayerCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        Container(height: 1, width: double.infinity, color: Color(0xffe2f0ec)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            homePrayerTimeList.length,
            (index) => NextPrayerCardItem(prayer: homePrayerTimeList[index]),
          ),
        ),
      ],
    );
  }
}
