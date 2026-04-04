import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomTasbihAppBar extends StatelessWidget {
  const CustomTasbihAppBar({super.key});

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
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
        image: DecorationImage(
          image: AssetImage(AppImages.appBarBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
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
                'المسبحة الإلكترونية',
                style: AppStyles.mediumCairo24(
                  context,
                ).copyWith(color: AppColors.kWhite),
              ),
              Text(
                'سبّح واذكر الله في كل وقت',
                style: AppStyles.regularCairo14(
                  context,
                ).copyWith(color: AppColors.kWhite),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
