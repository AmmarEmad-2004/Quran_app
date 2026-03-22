import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/setting/models/setting_model.dart';
import 'package:quran_app/features/setting/widgets/custom_setting_app_bar.dart';
import 'package:quran_app/features/setting/widgets/setting_item.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [CustomSettingAppBar(), CustomSettingCard()]),
    );
  }
}

class CustomSettingCard extends StatelessWidget {
  const CustomSettingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}

const List<SettingModel> settingItems = [
  SettingModel(
    title: "الوضع الليلي",
    subTitle: "تبديل بين الوضع الفاتح والداكن",
    icon: Icons.dark_mode,
  ),
  SettingModel(
    title: "الصوت",
    subTitle: "الشيخ مشاري العفاسي",
    icon: Icons.volume_up,
  ),
  SettingModel(title: "الخط", subTitle: "الخط العادي", icon: Icons.format_size),
  SettingModel(
    title: "الخلفية",
    subTitle: "الخلفية الافتراضية",
    icon: Icons.image,
  ),
];
