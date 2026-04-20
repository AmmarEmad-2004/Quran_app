import 'package:flutter/material.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_star_background.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/custom_tasbih_app_bar.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/sebha_card.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_item_list.dart';

class TasbihScreenBody extends StatelessWidget {
  const TasbihScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        spacing: 8,
        children: [
          CustomTasbihAppBar(),
          SizedBox(height: 2),
          TasbihItemList(),
          SebhaCard(),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: CustomStarBackground(
              label: 'فضل التسبيح',
              content:
                  ''
                  '"مَنْ قَالَ سُبْحَانَ اللَّهِ وَبِحَمۡدِهِ فِي يَوۡمٍ مِائَةَ مَرَّةٍ حُطَّتۡ خَطَايَاهُ وَإِنۡ كَانَتۡ مِثۡلَ زَبَدِ ٱلۡبَحۡرِ"',
              footer: 'رواه البخاري ومسلم',
            ),
          ),
        ],
      ),
    );
  }
}
