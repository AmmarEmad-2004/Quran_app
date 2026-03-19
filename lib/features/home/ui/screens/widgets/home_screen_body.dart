import 'package:flutter/material.dart';
import 'package:quran_app/features/home/ui/screens/widgets/aya_of_today.dart';
import 'package:quran_app/features/home/ui/screens/widgets/category_card.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_appbar.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_background.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bgHeight = MediaQuery.sizeOf(context).height * 0.5;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: bgHeight,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CustomHomeBackground(),
                Positioned(
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      CustomHomeAppBar(),
                      SizedBox(height: 24),
                      NextPrayerCard(),
                      SizedBox(height: 30),
                      AyaOfToday(),
                      SizedBox(height: 20),
                      CategoryCardList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [CategoryCard(), CategoryCard()]),
        Row(children: [CategoryCard(), CategoryCard()]),
        Row(children: [CategoryCard(), CategoryCard()]),
      ],
    );
  }
}
