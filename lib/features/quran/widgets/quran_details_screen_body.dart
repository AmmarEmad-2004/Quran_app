import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/gradient_appbar.dart';
import 'package:quran_app/features/quran/widgets/app_bar_detalis_screen_conten.dart';
import 'package:quran_app/features/quran/widgets/ayah_list.dart';

class QuranDetailsScreenBody extends StatelessWidget {
  const QuranDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [
        GradientAppbar(radius: 0 ,height: 0.1 , child: AppBarDetailsScreenContent(surahName: 'الفاتحة', surahType: 'مكية', ayahCount: 7,)),
       Expanded(child: AyahList())
      ],),
    );
  }
}