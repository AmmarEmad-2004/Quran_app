import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/zekr_list_demo.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_item.dart';

class TasbihItemList extends StatefulWidget {
  const TasbihItemList({super.key});

  @override
  State<TasbihItemList> createState() => _TasbihItemListState();
}

class _TasbihItemListState extends State<TasbihItemList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 8,
      children: List.generate(zekr.length, (index) {
        final item = zekr[index];
        return TasbihItem(
          zekr: item["zikr"],
          isSelected: selectedIndex == index,
        );
      }),
    );
  }
}
