import 'package:flutter/material.dart';
import 'package:quran_app/features/onboarding/ui/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: List.generate(
        3,
        (index) => CustomDotIndicator(isActive: index == currentPage),
      ),
    );
  }
}
