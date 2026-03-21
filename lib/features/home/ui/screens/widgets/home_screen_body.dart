import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/home/ui/screens/widgets/aya_of_today.dart';
import 'package:quran_app/features/home/ui/screens/widgets/category_card.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_appbar.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_background.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  late final ScrollController _scrollController;
  late final ValueNotifier<double> _appBarOffsetNotifier;
  double _lastOffset = 0.0;
  final double _maxAppBarOffset = 120.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _appBarOffsetNotifier = ValueNotifier(0.0);
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    double currentOffset = _scrollController.offset;
    double delta = currentOffset - _lastOffset;
    _lastOffset = currentOffset;

    if (currentOffset <= 0) {
      _appBarOffsetNotifier.value = 0.0;
    } else {
      double newValue = _appBarOffsetNotifier.value - delta;
      _appBarOffsetNotifier.value = newValue.clamp(-_maxAppBarOffset, 0.0);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _appBarOffsetNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    // Top section expands initially to about 45% of screen height
    final double expandedHeight = (screenHeight * 0.45).clamp(350.0, 500.0);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Background Layer
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: expandedHeight,
          child: const CustomHomeBackground(),
        ),

        // Content Layer
        Column(
          children: [
            ValueListenableBuilder<double>(
              valueListenable: _appBarOffsetNotifier,
              builder: (context, offsetValue, child) {
                // Smooth opacity fade as it goes up
                final double opacity =
                    (1.0 - (offsetValue.abs() / _maxAppBarOffset)).clamp(
                      0.0,
                      1.0,
                    );
                return Transform.translate(
                  offset: Offset(0, offsetValue),
                  child: Opacity(opacity: opacity, child: child),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.paddingOf(context).top + 10,
                  left: 20,
                  right: 20,
                ),
                child: const CustomHomeAppBar(),
              ),
            ),
            const SizedBox(height: 10),
            AnimatedBuilder(
              animation: _scrollController,
              builder: (context, child) {
                double offset = 0.0;
                if (_scrollController.hasClients) {
                  offset = _scrollController.offset;
                }
                // Fade out progressively as user scrolls down up to 150 pixels
                final double fadeOpacity = (1.0 - (offset / 150)).clamp(
                  0.0,
                  1.0,
                );

                // If it's completely faded, we shrink its height to 0 to let the list take its place
                return AnimatedSize(
                  duration: const Duration(milliseconds: 100),
                  child: fadeOpacity == 0.0
                      ? const SizedBox()
                      : Opacity(opacity: fadeOpacity, child: child),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: NextPrayerCard(),
              ),
            ),

            // The Scrollable Part (Column)
          ],
        ),
        SingleChildScrollView(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.45,
            ),
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
