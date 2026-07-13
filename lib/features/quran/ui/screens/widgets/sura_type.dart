import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class SuraType extends StatelessWidget {
  const SuraType({super.key, required this.isMadani});
  final bool isMadani;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.44,
      height: 20,
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p8(context),
        vertical: AppPadding.p2(context),
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: isMadani
            ? AppColors.lightGold.withValues(alpha: 0.1)
            : AppColors.lightGreen.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          isMadani ? 'مدنية' : 'مكية',
          textAlign: TextAlign.right,
          style: AppStyles.regularCairo12(context).copyWith(
            color: isMadani ? AppColors.lightGold : AppColors.lightGreen,
          ),
        ),
      ),
    );
  }
}
