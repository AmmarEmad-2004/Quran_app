import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/quran/ui/widgets/font_size_controll_item.dart';

class FontSizeControl extends StatelessWidget {
  const FontSizeControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      children: [
        FontSizeControllItem(icon: Icons.zoom_in, onTap: () {},),
        Text(
          '20px',
          textAlign: TextAlign.center,
          style: AppStyles.regularCairo14(context).copyWith(color: AppColors.darkGrey)),
        FontSizeControllItem(icon: Icons.zoom_out, onTap: (){},),
        ]);
  }
}