import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class TimeOfReminderMenu extends StatefulWidget {
  const TimeOfReminderMenu({super.key});

  @override
  State<TimeOfReminderMenu> createState() => _TimeOfReminderMenuState();
}

class _TimeOfReminderMenuState extends State<TimeOfReminderMenu> {
  String selectedLanguage = 'صباحاً';

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      trailingIcon: const Icon(
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
      hintText: 'صباحاً',
      onSelected: (value) {
        setState(() {
          selectedLanguage = value!;
        });
      },
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: 'ص', label: 'صباحاً'),
        DropdownMenuEntry(value: 'م', label: 'مساءً'),
      ],
    );
  }
}
