import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/gradient_appbar.dart';
import 'package:quran_app/features/quran/widgets/app_bar_quran_screen_content.dart';
import 'package:quran_app/features/quran/widgets/filter_chip_row.dart';
import 'package:quran_app/features/quran/widgets/status_card_row.dart';
import 'package:quran_app/features/quran/widgets/surahs_list.dart';

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