
import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_card_item_footer.dart';

class TasbihCardFooter extends StatelessWidget {
  const TasbihCardFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TasbihCardItemFooter(label: 'الجولات', count: 0),
        TasbihCardItemFooter(label: 'الإجمالي اليومي', count: 20),
        Column(
          spacing: 6,
          children: [
            CustomGradientBackground(
              width: 48,
              borderRadius: 40,
              colorGradient1: AppColors.lightGold.withValues(
                alpha: 0.1,
              ),
              colorGradient2: AppColors.lightGreen.withValues(
                alpha: 0.1,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.refresh),
                iconSize: 22,
              ),
            ),
            Text(
              'إعادة تعيين',
              style: AppStyles.regularCairo12(context),
            ),
          ],
        ),
      ],
    );
  }
}
