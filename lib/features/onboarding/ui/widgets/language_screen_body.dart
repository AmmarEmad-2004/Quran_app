import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/core/widgets/custom_gradient_button.dart';
import 'package:quran_app/features/onboarding/ui/widgets/language_list.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class LanguageScreenBody extends StatelessWidget {
  const LanguageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppPadding.p16(context)),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Colors.transparent,
              elevation: 10,
              shadowColor: Colors.black.withValues(alpha: 0.6),

              child: CustomGradientBackground(
                width: 96,
                borderRadius: 30,
                colorGradient1: AppColors.lightGreen,
                colorGradient2: AppColors.darkGreen,
                child: Padding(
                  padding: EdgeInsets.all(AppPadding.p12(context)),
                  child: Image.asset(AppImages.globalIcon),
                ),
              ),
            ),
            Text(
              "اختر اللغة",
              style: AppStyles.mediumCairo24(context).copyWith(fontSize: 30),
            ),
            Text(
              "Select Your Preferred Language",
              style: AppStyles.regularCairo16(
                context,
              ).copyWith(color: AppColors.darkGrey),
            ),
            SizedBox(height: 20),
            Expanded(child: LanguageList()),
            CustomGradientButton(
              text: "متابعة",
              fontSize: 18,
              height: 50,
              onTap: () {
                GoRouter.of(context).go(AppRouters.location);
              },
            ),
          ],
        ),
      ),
    );
  }
}
