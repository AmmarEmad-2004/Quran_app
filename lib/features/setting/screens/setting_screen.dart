import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/setting/models/setting_model.dart';
import 'package:quran_app/features/setting/widgets/custom_setting_app_bar.dart';
import 'package:quran_app/features/setting/widgets/setting_item.dart';

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
        ],
      ),
    );
  }
}

class GlobalSetting extends StatelessWidget {
  const GlobalSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("الإعدادات العامة", style: AppStyles.mediumCairo12(context)),
        Card(
          color: AppColors.kWhite,
          child: Column(
            children: [
              SettingItem(
                settingModel: SettingModel(
                  title: "الوضع الليلي",
                  subTitle: "تبديل بين الوضع الفاتح والداكن",
                  icon: Icons.dark_mode_outlined,
                ),
                trailing: Switch(value: false, onChanged: (value) {}),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Color(0xffe2f0ec),
              ),
              SettingItem(
                settingModel: SettingModel(
                  title: "الإشعارات",
                  subTitle: "إدارة التنبيهات والإشعارات",
                  icon: Icons.notifications_none_outlined,
                ),
                trailing: Switch(value: false, onChanged: (value) {}),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
