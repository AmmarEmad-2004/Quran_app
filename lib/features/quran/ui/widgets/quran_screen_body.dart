import 'package:flutter/material.dart';
import 'package:quran_app/features/quran/ui/widgets/filter_chip_row.dart';
import 'package:quran_app/features/quran/ui/widgets/status_card_row.dart';
import 'package:quran_app/features/quran/ui/widgets/surahs_list.dart';
import 'package:quran_app/features/quran/widgets/app_bar_quran_screen_content.dart';
class QuranScreenBody extends StatelessWidget {
  const QuranScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AppBarQuranScreenContent(),
        FilterChipsRow(),
        StatusCardRow(),
        Expanded(child: SurahsList()),
      ],
    );
  }
}