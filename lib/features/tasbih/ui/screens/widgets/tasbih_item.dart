import 'package:flutter/material.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_active_item.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_non_active_item.dart';

class TasbihItem extends StatelessWidget {
  const TasbihItem({super.key, required this.isSelected, required this.zekr});
final bool isSelected;
final String zekr;
  @override
  Widget build(BuildContext context) {
    return isSelected ? TasbihActiveItem(zekr: zekr) : TasbihNonActiveItem(zekr: zekr);
  }
}