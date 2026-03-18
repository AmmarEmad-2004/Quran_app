import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';

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
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: []),
    );
  }
}
