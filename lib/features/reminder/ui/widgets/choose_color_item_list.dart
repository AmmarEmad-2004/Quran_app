import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/choose_color_list_demo.dart';
import 'package:quran_app/features/reminder/ui/widgets/choose_color_item.dart';

class ChooseColorItemList extends StatelessWidget {
  const ChooseColorItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(colors.length, (index) {
        return ChooseColorItem(
          colorGradient1: colors[index]['color1']!,
          colorGradient2: colors[index]['color2']!,
          onTap: () {},
        );
      }),
    );
  }
}