import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/features/prayer/ui/widgets/prayer_time_cards_list.dart';

class PrayerScreenScrollBody extends StatelessWidget {
  const PrayerScreenScrollBody({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.35),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p16(context)),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48),
              topRight: Radius.circular(48),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              PrayerTimeCardsList(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
