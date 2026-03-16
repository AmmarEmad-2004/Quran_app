import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class AppBarDetailsScreenContent extends StatelessWidget {
  final String surahName;
  final String surahType;
  final int ayahCount;

  const AppBarDetailsScreenContent({
    super.key,
    required this.surahName,
    required this.surahType,
    required this.ayahCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).go(AppRouters.quran);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.kWhite, size: 18),
        ),
        Column(
          spacing: 4,
          children: [
            Text(
              'سورة $surahName',
              style: AppStyles.mediumCairo18(
                context,
              ).copyWith(color: AppColors.kWhite, fontSize: 20),
            ),
            Text(
              '$surahType · $ayahCount آية',
              style: AppStyles.regularCairo14(
                context,
              ).copyWith(color: AppColors.kWhite.withValues(alpha: 0.8)),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_outline_rounded,
            color: AppColors.kWhite,
            size: 18,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.volume_up_outlined,
            color: AppColors.kWhite,
            size: 18,
          ),
        ),
      ],
    );
  }
}
