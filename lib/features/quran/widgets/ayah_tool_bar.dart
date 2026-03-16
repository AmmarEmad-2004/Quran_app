import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/circle_badge_card.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/quran/widgets/font_size_control.dart';
import 'package:quran_app/features/quran/widgets/language_menu.dart';

class AyahToolBar extends StatelessWidget {
  const AyahToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardColor: AppColors.kWhite,
      radius: 0,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(children: [
          FontSizeControl(),
          Spacer(),
          LanguageMenu(),
          CircleBadgeCard( height: 36,width: 53, child: Text("عربي", style: AppStyles.mediumCairo14(context).copyWith(color: AppColors.kWhite),), ), 
        ],),
      ),
    );
  }
}

