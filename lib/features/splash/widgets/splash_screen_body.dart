import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    super.initState();
    navigateAfterDelay();
  }

  Future<void> navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    GoRouter.of(context).pushReplacement(AppRouters.onBoarding);
  }

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
            const SizedBox(height: 33),
            Text(
              "المصحف الشريف",
              style: AppStyles.mediumCairo36(
                context,
              ).copyWith(color: Colors.white),
            ),
            const SizedBox(height: 33),
            Text(
              "﴿ وَرَتِّلِ الْقُرْآنَ تَرْتِيلًا ﴾",
              style: AppStyles.regularAmiri20(
                context,
              ).copyWith(color: AppColors.lightGold),
            ),
            const SizedBox(height: 8),
            Text(
              "سورة المزمل - آية 4",
              style: AppStyles.regularCairo14(
                context,
              ).copyWith(color: AppColors.kWhite.withValues(alpha: 0.6)),
            ),

            Lottie.asset("assets/animation/Loading.json"),
          ],
        ),
      ),
    );
  }
}
