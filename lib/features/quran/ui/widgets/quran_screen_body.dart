import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/gradient_appbar.dart';
import 'package:quran_app/features/quran/ui/widgets/app_bar_quran_screen_content.dart';
import 'package:quran_app/features/quran/ui/widgets/filter_chip_row.dart';
import 'package:quran_app/features/quran/ui/widgets/status_card_row.dart';
import 'package:quran_app/features/quran/ui/widgets/surahs_list.dart';

class QuranScreenBody extends StatelessWidget {
  const QuranScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        GradientAppbar(height: 0.2, radius: 0, child: AppBarQuranScreenContent(),),
        FilterChipsRow(),
        StatusCardRow(),
        Expanded(child: SurahsList()),
      ],
    );
  }
}