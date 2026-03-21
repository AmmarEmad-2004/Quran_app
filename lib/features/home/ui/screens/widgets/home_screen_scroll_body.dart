import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/home/ui/screens/widgets/aya_of_today.dart';
import 'package:quran_app/features/home/ui/screens/widgets/category_card_list.dart';

class HomeScreenScrollBody extends StatelessWidget {
  const HomeScreenScrollBody({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.45),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.kBackGround,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48),
              topRight: Radius.circular(48),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              AyaOfToday(),
              SizedBox(height: 20),
              CategoryCardList(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}




