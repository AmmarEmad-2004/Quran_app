
import 'package:flutter/material.dart';
import 'package:quran_app/features/onboarding/widgets/onboarding_item.dart';

class CustomOnBoardingPageView extends StatelessWidget {
   CustomOnBoardingPageView({super.key});
 final List<OnBoardingItem> items=[
  OnBoardingItem(
    title: "القرآن الكريم",
    description: "اقرأ القرآن الكريم بخط واضح وتصميم جميل مع إمكانية الاستماع للتلاوات",
    image: "",
 
  ),
  OnBoardingItem(
    title: "مواقيت الصلاة",
    description: "تنبيهات دقيقة لمواقيت الصلاة حسب موقعك مع صوت الأذان",
    image: "",
 
  ),
  OnBoardingItem(
    title: "رفيقك الروحاني",
    description: "تذكيرات يومية، أذكار، تسبيح، وكل ما تحتاجه في رحلتك الإيمانية",
    image: "",
 
  ),
];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return  PageView.builder(itemBuilder: (context,index){
          return items[index];
        });
      },
    );
  }
}


