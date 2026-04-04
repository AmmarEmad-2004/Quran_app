
import 'package:flutter/material.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_star_background.dart';

class AyaOfToday extends StatelessWidget {
  const AyaOfToday({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomStarBackground(
      label: 'آية اليوم',
      content: '﴿ وَقُل رَّبِّ زِدۡنِی عِلۡمࣰا ﴾',
      footer: 'سورة طه - الآية 114',
    );
  }
}