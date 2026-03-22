import 'package:flutter/material.dart';
import 'package:quran_app/features/setting/widgets/custom_setting_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [CustomSettingAppBar()]));
  }
}
