import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/quran/ui/widgets/filter_chip_item.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class FilterChipsRow extends StatefulWidget {
  const FilterChipsRow({super.key});

  @override
  State<FilterChipsRow> createState() => _FilterChipsRowState();
}

class _FilterChipsRowState extends State<FilterChipsRow> {

  int selectedIndex = 0;

  final List<Map<String, String>> filters = [
    {'label': 'الكل', 'badge': ''},
    {'label': 'مكية', 'badge': '86'},
    {'label': 'مدنية', 'badge': '28'},
  ];

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardColor: AppColors.kWhite,
      radius: 0,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p16(context), vertical: AppPadding.p4(context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(filters.length, (index) {
            final item = filters[index];
            return Padding(
              padding: EdgeInsets.only(right: AppPadding.p8(context)),
              child: FilterChipItem(
                label: item['label']!,
                badge: item['badge']!,
                isSelected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}