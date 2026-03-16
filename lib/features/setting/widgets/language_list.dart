import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/features/setting/data/models/language_model.dart';
import 'package:quran_app/features/setting/widgets/language_item.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({super.key});

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  int selectedLang = 0;
  final List<LanguageModel> languages = [
    LanguageModel(
      imaageFlag: AppImages.soudiFlag,
      langName: "العربية",
      langNmaeTranslate: "Arabic",
    ),
    LanguageModel(
      imaageFlag: AppImages.usFlag,
      langName: "English",
      langNmaeTranslate: "English",
    ),
    LanguageModel(
      imaageFlag: AppImages.arduFlag,
      langName: "اردو",
      langNmaeTranslate: "Urdo",
    ),
    LanguageModel(
      imaageFlag: AppImages.frFlag,
      langName: "Français",
      langNmaeTranslate: "French",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
