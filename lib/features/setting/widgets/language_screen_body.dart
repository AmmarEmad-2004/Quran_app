
import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/circle_badge_card.dart';
import 'package:quran_app/features/setting/widgets/language_list.dart';

class LanguageScreenBody extends StatelessWidget {
  const LanguageScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            CircleBadgeCard( height: 96, width: 96, child: Image.asset(AppImages.globalIcon)),
            Text("اختر اللغة", style: AppStyles.mediumCairo24(context).copyWith(fontSize: 30),),
            Text("Select Your Preferred Language",style:  AppStyles.regularCairo16(context).copyWith(color: AppColors.darkGrey)),
            SizedBox(height: 20,),
            Expanded(child: LanguageList()),
          ],),
        )
      ],),
    );
  }
}