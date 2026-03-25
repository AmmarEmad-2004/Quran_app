import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/circle_badge_card.dart';

class ChooseColorItem extends StatelessWidget {
  const ChooseColorItem({
    super.key,
    required this.colorGradient1,
    required this.colorGradient2,
    this.onTap,
  });
  final Color colorGradient1, colorGradient2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleBadgeCard(
        width: 90,
        height: 48,
        radius: 20,
        gradient1: colorGradient1,
        gradient2: colorGradient2,
        child: SizedBox.shrink(),
      ),
    );
  }
}
