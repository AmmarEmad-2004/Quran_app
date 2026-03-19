import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/onboarding/ui/widgets/onboarding_item.dart';

class CustomOnBoardingPageView extends StatelessWidget {
  const CustomOnBoardingPageView({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });
  final List<OnBoardingItem> items = const [
    OnBoardingItem(
      title: "القرآن الكريم",
      description:
          "اقرأ القرآن الكريم بخط واضح وتصميم جميل مع إمكانية الاستماع للتلاوات",
      image: AppImages.mushafIcon1,
    ),
    OnBoardingItem(
      title: "مواقيت الصلاة",
      description: "تنبيهات دقيقة لمواقيت الصلاة حسب موقعك مع صوت الأذان",
      image: AppImages.clockIcon1,
      gradientColor1: AppColors.lightGold,
      gradientColor2: AppColors.darkGold,
      borderColor: Colors.amber,
    ),
    OnBoardingItem(
      title: "رفيقك الروحاني",
      description:
          "تذكيرات يومية، أذكار، تسبيح، وكل ما تحتاجه في رحلتك الإيمانية",
      image: AppImages.fav1,
    ),
  ];
  final PageController pageController;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: PageView.builder(
        controller: pageController,
        itemCount: items.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return items[index];
        },
      ),
    );
  }
}
