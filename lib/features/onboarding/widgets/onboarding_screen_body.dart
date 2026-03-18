import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/features/onboarding/widgets/custom_nav_onborading.dart';
import 'package:quran_app/features/onboarding/widgets/custom_onboarding_page_view.dart';
import 'package:quran_app/features/onboarding/widgets/dots_indicator.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  int currentPage = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPage);
  }

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
          CustomOnBoardingPageView(
            pageController: pageController,
            onPageChanged: (page) => setState(() => currentPage = page),
          ),
          DotsIndicator(currentPage: currentPage),
          Spacer(flex: 1),
          Container(
            height: 1,
            color: Color(0xffeaf0eb),
            width: double.infinity,
          ),
          CustomNavOnborading(
            currentPage: currentPage,
            nextOnTap: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            previousOnTap: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
        ],
      ),
    );
  }
}
