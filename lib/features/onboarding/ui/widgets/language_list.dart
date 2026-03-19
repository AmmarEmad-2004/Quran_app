import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/features/onboarding/data/models/language_model.dart';
import 'package:quran_app/features/onboarding/ui/widgets/language_item.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({super.key});

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  int selectedLang = 0;
  final List<LanguageModel> languages = [
    LanguageModel(
      image: AppImages.globalIcon,
      title: "العربية",
      subTitle: "Arabic",
    ),
    LanguageModel(
      image: AppImages.globalIcon,
      title: "English",
      subTitle: "English",
    ),
    LanguageModel(image: AppImages.globalIcon, title: "اردو", subTitle: "Urdo"),
    LanguageModel(
      image: AppImages.globalIcon,
      title: "Français",
      subTitle: "French",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       physics: NeverScrollableScrollPhysics(),
      itemCount: languages.length,
      itemBuilder: (context, index) {
        return LanguageItem(
          languageModel: languages[index],
          isSelected: selectedLang == index,
          onTap: () {
            setState(() {
              selectedLang = index;
            });
          },
        );
      },
    );
  }
}
