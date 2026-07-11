import 'package:flutter/material.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_list.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/custom_azkar_app_bar.dart';

class AzkarScreenBody extends StatelessWidget {
  const AzkarScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          CustomAzkarAppBar(),
          AzkarList(),
        ],
      ),
    );
  }
}
