import 'package:flutter/material.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/custom_tasbih_app_bar.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/sebha_card.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_item_list.dart';

class TasbihScreenBody extends StatelessWidget {
  const TasbihScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
       spacing: 20,
        children: [
          CustomTasbihAppBar(),
         TasbihItemList(),
         SebhaCard(),
        ],
      ),
    );
  }
}