import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.splashBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.splash),
            SizedBox(height: 33),
            Text(
              "المصحف الشريف",
              style: AppStyles.mediumCairo36(context).copyWith(color: Colors.white),
            ),
            SizedBox(height: 33),
            Text(
              "﴿ وَرَتِّلِ الْقُرْآنَ تَرْتِيلًا ﴾",
              style: AppStyles.regularAmiri20(
                context,
              ).copyWith(color: AppColors.lightGold),
            ),
            Text("سورة المزمل - آية 4",style: AppStyles.regularCairo14(context),)
          ],
        ),
      ),
    );
  }
}
