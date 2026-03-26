import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/widgets/custom_button.dart';

class BottomSheetFooterNavButtons extends StatelessWidget {
  const BottomSheetFooterNavButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Flexible(
          child: CustomButon(
            text: 'إلغاء',
            onTap: () {},
            height: 40,
            radius: 12,
            borderColor: Border.all(
              color: AppColors.lightGreen.withValues(alpha: 0.12),
            ),
          ),
        ),
        Flexible(
          child: CustomButon(
            text: 'حفظ التذكير',
            onTap: () {},
            height: 40,
            radius: 12,
            textColor: AppColors.kWhite,
            buttonColor: AppColors.darkGreen,
          ),
        ),
      ],
    );
  }
}
