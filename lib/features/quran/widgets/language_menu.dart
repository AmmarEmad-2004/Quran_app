import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class LanguageMenu extends StatefulWidget {
  const LanguageMenu({super.key});

  @override
  State<LanguageMenu> createState() => _LanguageMenuState();
}

class _LanguageMenuState extends State<LanguageMenu> {
  String selectedLanguage = 'العربية';

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 150,
      trailingIcon: const Icon(
        Icons.translate,
        color: AppColors.darkGrey,
        size: 12,
      ),
      leadingIcon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: AppColors.darkGrey,
        size: 16,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(0),
        filled: true,
        fillColor: AppColors.kWhite,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.transparent),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
      textStyle: AppStyles.regularCairo14(
        context,
      ).copyWith(color: AppColors.kBlack),
      initialSelection: selectedLanguage,
      hintText: 'العربية',
      onSelected: (value) {
        setState(() {
          selectedLanguage = value!;
        });
      },
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: 'العربية', label: 'العربية'),
        DropdownMenuEntry(value: 'English', label: 'English'),
      ],
    );
  }
}
