import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomAzkarAppBar extends StatelessWidget {
  const CustomAzkarAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: AppPadding.p24(context),
        left: AppPadding.p24(context),
        right: AppPadding.p24(context),
        bottom: AppPadding.p24(context),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(48),
          bottomRight: Radius.circular(48),
        ),
        image: DecorationImage(
          image: AssetImage(AppImages.appBarBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: AppColors.kWhite,
                  size: 16,
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "الأدعية والأذكار",
                    style: AppStyles.mediumCairo24(
                      context,
                    ).copyWith(color: AppColors.kWhite),
                  ),
                  Text(
                    "تخصيص تجربتك",
                    style: AppStyles.regularCairo14(
                      context,
                    ).copyWith(color: AppColors.kWhite),
                  ),
                ],
              ),
              Spacer(),
              Image.asset(AppImages.doaaHandIcon),
            ],
          ),
          AzkarCounterItem(),
        ],
      ),
    );
  }
}

class AzkarCounterItem extends StatelessWidget {
  const AzkarCounterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
      decoration: ShapeDecoration(
        color: Colors.white.withValues(alpha: 0.10000000149011612),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),

      child: Column(
        children: [
          Text(
            "1",
            style: AppStyles.regularCairo24(
              context,
            ).copyWith(color: AppColors.kWhite),
          ),
          Text(
            "مكتملة اليوم",
            style: AppStyles.regularCairo12(
              context,
            ).copyWith(color: AppColors.kWhite),
          ),
        ],
      ),
    );
  }
}
