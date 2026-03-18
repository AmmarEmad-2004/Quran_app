import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/features/onboarding/data/models/language_model.dart';
import 'package:quran_app/features/onboarding/ui/widgets/location_item_info.dart';

class LocationInfoList extends StatelessWidget {
  LocationInfoList({super.key});

  final List<LanguageModel> locations = [
    LanguageModel(
      image: AppImages.locationIconGreen,
      title: "أوقات الصلاة الدقيقة",
      subTitle: "حساب دقيق بناءً على موقعك",
    ),
    LanguageModel(
      image: AppImages.sendIcon,
      title: "المساجد القريبة",
      subTitle: "اكتشف المساجد من حولك",
    ),
    LanguageModel(
      image: AppImages.protectIcon,
      title: "خصوصية محمية",
      subTitle: "بياناتك آمنة ومحمية",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: locations.length,
      itemBuilder: (context, index) {
        return LocationItemInfo(languageModel: locations[index]);
      },
    );
  }
}
