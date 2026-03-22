import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/widgets/custom_card.dart';

class ChooseIconItem extends StatelessWidget {
  const ChooseIconItem({
    super.key,
    this.onTap,
    required this.image,
    required this.isSelected,
  });
  final String image;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomCard(
        cardColor: isSelected
            ? AppColors.lightGreen.withValues(alpha: 0.10)
            : Colors.transparent,
        borderColor: isSelected
            ? AppColors.lightGreen
            : AppColors.lightGreen.withValues(alpha: 0.12),
        elevation: 0,
        radius: 20,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 33),
          child: Image.asset(image, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
