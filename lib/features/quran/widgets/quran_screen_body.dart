import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/gradient_appbar.dart';
import 'package:quran_app/features/quran/widgets/app_bar_content.dart';
import 'package:quran_app/features/quran/widgets/filter_chip_row.dart';
import 'package:quran_app/features/quran/widgets/status_card_row.dart';

class QuranScreenBody extends StatelessWidget {
  const QuranScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(child: Column(
      children: [
        GradientAppbar(height: 0.2, radius: 0, child: AppBarContent(),),
        FilterChipsRow(),
        StatusCardRow(),
      ],
    ),);
  }
}