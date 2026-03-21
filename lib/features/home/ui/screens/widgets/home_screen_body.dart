import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/home/ui/screens/widgets/aya_of_today.dart';
import 'package:quran_app/features/home/ui/screens/widgets/category_card.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_appbar.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_background.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    // Top section expands initially to about 45% of screen height
    final double expandedHeight = (screenHeight * 0.45).clamp(350.0, 500.0);

    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: AppColors.lightGreen,
          floating: true,
          snap: true,
          toolbarHeight: 70,

          elevation: 0,
          titleSpacing: 10,
          title: CustomHomeAppBar(),
        ),
        SliverPersistentHeader(
          pinned: false,
          delegate: _NextPrayerCardDelegate(expandedHeight - 70),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
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
      ],
    );
  }
}

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.85, // Adjust for CategoryCard contents
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return const CategoryCard();
      },
    );
  }
}

class _NextPrayerCardDelegate extends SliverPersistentHeaderDelegate {
  final double height;

  _NextPrayerCardDelegate(this.height);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: const [
          CustomHomeBackground(),
          Positioned(top: 20, left: 20, right: 20, child: NextPrayerCard()),
        ],
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant _NextPrayerCardDelegate oldDelegate) {
    return oldDelegate.height != height;
  }
}
