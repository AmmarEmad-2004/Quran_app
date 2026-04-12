import 'package:flutter/material.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_details_list.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/custom_azkar_app_bar.dart';

class AzkarDetailScreenBody extends StatelessWidget {
  const AzkarDetailScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: const Column(
      spacing: 16,
      children: [
        CustomAzkarAppBar(),
        AzkarDetailsList(),
      ],
    ));
  }
}