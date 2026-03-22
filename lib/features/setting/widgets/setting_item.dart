import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/setting/models/setting_model.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, required this.settingModel, this.trailing});
  final SettingModel settingModel;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(settingModel.title, style: AppStyles.regularCairo16(context)),
      subtitle: Text(
        settingModel.subTitle,
        style: AppStyles.regularCairo12(
          context,
        ).copyWith(color: AppColors.darkGrey),
      ),
      leading: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.lightGreen, AppColors.lightGold],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(settingModel.icon),
      ),
      trailing: trailing,
    );
  }
}
