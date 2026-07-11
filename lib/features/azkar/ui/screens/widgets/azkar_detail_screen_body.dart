import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/azkar/data/models/get_azkar_category.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_details_list.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/custom_azkar_app_bar.dart';

class AzkarDetailScreenBody extends StatelessWidget {
  const AzkarDetailScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    final azkarCategory = GoRouterState.of(context).extra as GetAzkarCategory;
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          const CustomAzkarAppBar(),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                azkarCategory.category,
                style: AppStyles.mediumCairo14(
                  context,
                ).copyWith(color: AppColors.darkGrey),
              ),
            ),
          ),
          const AzkarDetailsList(),
        ],
      ),
    );
  }
}
