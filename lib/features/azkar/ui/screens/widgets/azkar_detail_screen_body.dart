import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_details_list.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/custom_azkar_app_bar.dart';

class AzkarDetailScreenBody extends StatelessWidget {
  const AzkarDetailScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          const CustomAzkarAppBar(),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.darkGrey,
                  size: 16,
                ),
              ),
              Text(
                "العودة للفئات",
                style: AppStyles.mediumCairo14(
                  context,
                ).copyWith(color: AppColors.darkGrey),
              ),
            ],
          ),
          const AzkarDetailsList(),
        ],
      ),
    );
  }
}
