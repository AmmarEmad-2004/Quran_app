import 'package:flutter/material.dart';
import 'package:quran_app/features/setting/widgets/about_app.dart';
import 'package:quran_app/features/setting/widgets/custom_ending_widget.dart';
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


