import 'package:flutter/material.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_background.dart';
import 'package:quran_app/features/home/ui/screens/widgets/hijri_date_card.dart';
import 'package:quran_app/features/prayer/ui/widgets/prayer_appbar.dart';
import 'package:quran_app/features/prayer/ui/widgets/prayer_screen_scroll_body.dart';

class PrayerScreenBody extends StatefulWidget {
  const PrayerScreenBody({super.key});

  @override
  State<PrayerScreenBody> createState() => _PrayerScreenBodyState();
}

class _PrayerScreenBodyState extends State<PrayerScreenBody> {
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
    final double expandedHeight = (screenHeight * 0.45).clamp(350.0, 500.0);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Layer 1: Background
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: expandedHeight,
          child: const CustomHomeBackground(),
        ),

        // Layer 2: Scrollable Content
        PrayerScreenScrollBody(scrollController: _scrollController),

        // Layer 3: Content
        Column(
          children: [
            // ✅ AppBar
            AnimatedSlide(
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
                  child: const PrayerAppbar(),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // ✅ HijriDateCard بس هنا - مش الـ List
            AnimatedBuilder(
              animation: _scrollController,
              builder: (context, child) {
                double offset = _scrollController.hasClients
                    ? _scrollController.offset
                    : 0.0;

                final double fadeOpacity = (1.0 - (offset / 150)).clamp(
                  0.0,
                  1.0,
                );

                return AnimatedSize(
                  duration: const Duration(milliseconds: 450),
                  child: fadeOpacity == 0.0
                      ? const SizedBox()
                      : Opacity(opacity: fadeOpacity, child: child),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: HijriDateCard(), // ✅ الكارت هنا بس
              ),
            ),
          ],
        ),
      ],
    );
  }
}
