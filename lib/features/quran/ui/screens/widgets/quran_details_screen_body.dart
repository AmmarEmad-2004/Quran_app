import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/utils/widgets/gradient_appbar.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/app_bar_detalis_screen_conten.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/ayah_list.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/ayah_tool_bar.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/nav_buttons.dart';

class QuranDetailsScreenBody extends StatelessWidget {
  const QuranDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final args = GoRouterState.of(context).extra as Map<String, dynamic>;
    final surahNumber = args['surahNumber'] as int;
    final name = args['surahName'] as String;
    final ayahCount = args['ayahCount'] as int;
    final isMadani = args['surahType'] as String  == 'Medinan';
    return Column(
      children: [
        GradientAppbar(
          radius: 0,
          height: 0.1,
          child: AppBarDetailsScreenContent(
            surahName: name,
            ayahCount: ayahCount,
            isMadani: isMadani,
          ),
        ),
        AyahToolBar(),
        Expanded(child: AyahList(surahNumber: surahNumber,)),
        SurahNavigationBar(),
      ],
    );
  }
}
