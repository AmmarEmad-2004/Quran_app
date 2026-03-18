import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/features/onboarding/widgets/custom_nav_button.dart';
import 'package:quran_app/features/onboarding/widgets/custom_onboarding_page_view.dart';
import 'package:quran_app/features/onboarding/widgets/dots_indicator.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.onboardingBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          CustomOnBoardingPageView(),

          DotsIndicator(currentPage: 0),
          Spacer(flex: 1),
          CustomNavButton(),
        ],
      ),
    );
  }
}


