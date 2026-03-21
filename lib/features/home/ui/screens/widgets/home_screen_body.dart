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
    final double screenHeight = MediaQuery.sizeOf(context).height;
    // Top section expands initially to about 45% of screen height
    final double expandedHeight = (screenHeight * 0.45).clamp(350.0, 500.0);
    final double pinnedHeight = MediaQuery.paddingOf(context).top + 90;

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: expandedHeight,
          floating: true,
          snap: true,
          toolbarHeight: 70,
          backgroundColor: Colors.transparent, // Background handles color
          elevation: 0,
          titleSpacing: 10,
          title: const CustomHomeAppBar(),
        ),
        SliverToBoxAdapter(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final double top = constraints.biggest.height;
              // Fade calculation, fades completely slightly before pinned
              final double fadeOpacity =
                  ((top - pinnedHeight - 20) /
                          (expandedHeight - pinnedHeight - 20))
                      .clamp(0.0, 1.0);

              // Smooth easing animation for fading
              final double opacity = Curves.easeInOut.transform(fadeOpacity);

              return FlexibleSpaceBar(
                background: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    const CustomHomeBackground(),
                    Positioned(
                      top: pinnedHeight + 16,
                      left: 20,
                      right: 20,
                      child: Opacity(
                        opacity: opacity,
                        child: const NextPrayerCard(),
                      ),
                    ),
                    Positioned(
                      top: pinnedHeight + 50 * -1,
                      left: 20,
                      right: 20,
                      child: Opacity(
                        opacity: opacity,
                        child: Column(
                          children: [
                            const AyaOfToday(),
                            const SizedBox(height: 20),
                            const CategoryCardList(),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        // SliverToBoxAdapter(
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
        //     child: Column(
        //       children: [
        //         const AyaOfToday(),
        //         const SizedBox(height: 20),
        //         const CategoryCardList(),
        //         const SizedBox(height: 40),
        //       ],
        //     ),
        //   ),
        // ),
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
