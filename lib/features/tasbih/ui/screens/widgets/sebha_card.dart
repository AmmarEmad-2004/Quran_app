import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/widgets/custom_card.dart';

class SebhaCard extends StatelessWidget {
  const SebhaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardColor: AppColors.kWhite,
      borderColor: Colors.transparent,
      radius: 20,
      child: Column(children: [
        
      ],),
    );
  }
}