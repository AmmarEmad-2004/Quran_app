import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/setting/models/setting_model.dart';
import 'package:quran_app/features/setting/widgets/setting_item.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("حول التطبيق", style: AppStyles.mediumCairo12(context)),
          SizedBox(height: 12),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 5,
            color: AppColors.kWhite,
            child: Column(
              children: [
                SettingItem(
                  settingModel: SettingModel(
                    title: "عن التطبيق",
                    subTitle: "معلومات عن المصحف الشريف",
                    icon: Icons.info_outline,
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
                    title: "الإصدار",
                    subTitle: "إصدار التطبيق الحالي",
                    icon: Icons.info_outline,
                  ),
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 