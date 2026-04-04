import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class ZekrProgressbar extends StatelessWidget {
  const ZekrProgressbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // الخلفية
        Container(
          height: 6,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        // التقدم
        FractionallySizedBox(
          widthFactor: 0.7, // نسبة التقدم
          child: Container(
            height: 6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.lightGreen, AppColors.lightGold],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
