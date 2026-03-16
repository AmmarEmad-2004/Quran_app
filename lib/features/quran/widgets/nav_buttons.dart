import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/quran/widgets/nav_button_item.dart';

class SurahNavigationBar extends StatefulWidget {
  const SurahNavigationBar({super.key});

  @override
  State<SurahNavigationBar> createState() => _SurahNavigationBarState();
}

class _SurahNavigationBarState extends State<SurahNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: AppColors.kBackGround,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
      child: Row(
        spacing: 12,
        children: [
          Expanded(
            child: NavButtonItem(
              radius: 20,
              isSelected: selectedIndex == 0,
              text: 'السورة التالية',
              leftIcon: Icons.arrow_forward,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
          ),
          Expanded(
            child: NavButtonItem(
              radius: 20,
              text: 'السورة السابقة',
              rightIcon: Icons.arrow_back,
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
