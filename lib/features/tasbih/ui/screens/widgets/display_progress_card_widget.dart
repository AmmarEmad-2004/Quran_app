import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/zekr_progress_bar.dart';

class DisplayProgressCardWidget extends StatelessWidget {
  const DisplayProgressCardWidget({
    super.key,
    required this.count,
    required this.maxCount,
  });
  final int count, maxCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.lightGreen.withValues(alpha: 0.2),
            AppColors.lightGold.withValues(alpha: 0.1),
          ],
        ),
        border: Border.all(color: AppColors.lightGreen, width: 8),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.p40(context),
          horizontal: AppPadding.p60(context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString(), style: AppStyles.regularCairo72(context)),
            Text('من $maxCount', style: AppStyles.regularCairo14(context)),
            SizedBox(height: AppPadding.p4(context)),
            SizedBox(
              width: 64,
              child: ZekrProgressbar(count: count, maxCount: maxCount),
            ),
          ],
        ),
      ),
    );
  }
}
