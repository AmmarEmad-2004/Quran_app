import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/circle_badge_card.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/quran/ui/widgets/font_size_control.dart';
import 'package:quran_app/features/quran/ui/widgets/language_menu.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class AyahToolBar extends StatelessWidget {
  const AyahToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardColor: AppColors.kWhite,
      radius: 0,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p8(context), vertical: AppPadding.p4(context)),
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

