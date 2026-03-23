import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/setting/widgets/about_app.dart';
import 'package:quran_app/features/setting/widgets/custom_setting_app_bar.dart';
import 'package:quran_app/features/setting/widgets/global_setting.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomSettingAppBar(),
          SizedBox(height: 20),
          GlobalSetting(),
          SizedBox(height: 20),
          AboutApp(),
          SizedBox(height: 20),
          CustomEndingWidget(),
        ],
      ),
    );
  }
}

class CustomEndingWidget extends StatelessWidget {
  const CustomEndingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.lightGreen, AppColors.darkGreen],
            ),
          ),
          child: Icon(Icons.star, color: AppColors.lightGold, size: 32),
        ),
        SizedBox(height: 12),
        Text(
          'المصحف الشريف',
          style: AppStyles.regularCairo14(
            context,
          ).copyWith(color: AppColors.darkGrey),
        ),
        Text(
          'صُنع بـ ❤️ لخدمة القرآن الكريم',
          style: AppStyles.regularCairo14(
            context,
          ).copyWith(color: AppColors.darkGrey),
        ),
      ],
    );
  }
}
