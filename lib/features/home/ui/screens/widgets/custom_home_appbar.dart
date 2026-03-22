import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "المصحف الشريف",
              style: AppStyles.mediumCairo30(
                context,
              ).copyWith(color: AppColors.kWhite),
            ),
            Text(
              "السلام عليكم ورحمة الله",
              style: AppStyles.regularCairo14(
                context,
              ).copyWith(color: AppColors.kWhite),
            ),
          ],
        ),

        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode_outlined, color: AppColors.kWhite),
            ),
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouters.setting);
              },
              icon: Icon(Icons.settings, color: AppColors.kWhite),
            ),
          ],
        ),
      ],
    );
  }
}
