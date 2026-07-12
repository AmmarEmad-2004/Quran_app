import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/quran/logic/surah_cubit/surah_cubit.dart';
import 'package:quran_app/features/quran/ui/screens/widgets/filter_chip_item.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class FilterChipsRow extends StatelessWidget {
  const FilterChipsRow({super.key});

  final List<Map<String, dynamic>> filters = const [
    {'label': 'الكل', 'badge': '', 'type': SurahFilterType.all},
    {'label': 'مكية', 'badge': '86', 'type': SurahFilterType.meccan},
    {'label': 'مدنية', 'badge': '28', 'type': SurahFilterType.medinan},
  ];

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardColor: AppColors.kWhite,
      radius: 0,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p16(context),
          vertical: AppPadding.p4(context),
        ),
        child: BlocBuilder<SurahCubit, SurahState>(
          builder: (context, state) {
            final selectedFilter = state is SurahSuccess ? state.selectedFilter : SurahFilterType.all;
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(filters.length, (index) {
                final item = filters[index];
                final filterType = item['type'] as SurahFilterType;
                return Padding(
                  padding: EdgeInsets.only(right: AppPadding.p8(context)),
                  child: FilterChipItem(
                    label: item['label'] as String,
                    badge: item['badge'] as String,
                    isSelected: selectedFilter == filterType,
                    onTap: () {
                      context.read<SurahCubit>().filterSurahs(filterType);
                    },
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
