import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [CustomSettingAppBar()]));
  }
}

class CustomSettingAppBar extends StatelessWidget {
  const CustomSettingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p24(context)),
      decoration: BoxDecoration(
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
            icon: Icon(Icons.arrow_back_outlined, color: AppColors.kWhite),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "الإعدادات",
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
        ],
      ),
    );
  }
}
