import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_counters.dart';

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
        spacing: 20,
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
          AzkarCounters(),
        ],
      ),
    );
  }
}
