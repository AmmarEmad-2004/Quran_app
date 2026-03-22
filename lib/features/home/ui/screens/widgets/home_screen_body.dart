import 'package:flutter/material.dart';

import 'package:quran_app/features/home/ui/screens/widgets/custom_home_appbar.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_background.dart';
import 'package:quran_app/features/home/ui/screens/widgets/home_screen_scroll_body.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  late final ScrollController _scrollController;
  bool _isAppBarVisible = true;
  double _lastOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    double currentOffset = _scrollController.offset;
    double delta = currentOffset - _lastOffset;
    _lastOffset = currentOffset;

    if (currentOffset <= 250) {
      if (!_isAppBarVisible) {
        setState(() {
          _isAppBarVisible = true;
        });
      }
      return;
    }

    if (delta > 2 && _isAppBarVisible) {
      // Scrolling down, hide it
      setState(() {
        _isAppBarVisible = false;
      });
    } else if (delta < -2 && !_isAppBarVisible) {
      // Scrolling up (slight pull down), show it
      setState(() {
        _isAppBarVisible = true;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    // Top section expands initially to about 45% of screen height
    final double expandedHeight = (screenHeight * 0.55).clamp(350.0, 500.0);

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
            const SizedBox(height: 100),
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
                  duration: const Duration(milliseconds: 500),
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
          ],
        ),
        HomeScreenScrollBody(scrollController: _scrollController),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            offset: _isAppBarVisible ? Offset.zero : const Offset(0, -1.0),
            curve: Curves.easeInOut,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: _isAppBarVisible ? 1.0 : 0.0,
              curve: Curves.easeInOut,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.paddingOf(context).top + 10,
                  left: 20,
                  right: 20,
                ),
                child: const CustomHomeAppBar(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
