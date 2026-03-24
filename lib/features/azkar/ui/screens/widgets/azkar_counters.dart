
import 'package:flutter/material.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_counter_item.dart';

class AzkarCounters extends StatelessWidget {
  const AzkarCounters({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: AzkarCounterItem()),
        Expanded(child: AzkarCounterItem()),
        Expanded(child: AzkarCounterItem()),
      ],
    );
  }
}