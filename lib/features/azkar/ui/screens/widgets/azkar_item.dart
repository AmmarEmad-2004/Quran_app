import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onTap,
    required this.colors,
  });
  final String image;
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p20(context)),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 4),
            spreadRadius: -4,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 15,
            offset: Offset(0, 10),
            spreadRadius: -3,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.71, -0.71),
          end: Alignment(-0.71, 0.71),
          colors: colors,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.azkarSabah),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.mediumCairo18(
                      context,
                    ).copyWith(color: AppColors.kWhite),
                  ),
                  Text(
                    subTitle,
                    style: AppStyles.regularCairo14(
                      context,
                    ).copyWith(color: AppColors.kWhite.withValues(alpha: 0.8)),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.kWhite.withValues(alpha: 0.6),
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
