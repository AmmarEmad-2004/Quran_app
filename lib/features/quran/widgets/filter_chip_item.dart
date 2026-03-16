import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class FilterChipItem extends StatelessWidget {
  const FilterChipItem( {
    super.key,
    required this.label,required this.badge, this.onTap, required this.isSelected,
  });
  final String label, badge;
  final void Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        width: MediaQuery.of(context).size.width*0.25,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: ShapeDecoration(
          gradient: isSelected
              ? LinearGradient(
                  begin: Alignment(0.50, 0.00),
                  end: Alignment(0.50, 1.00),
                  colors: [AppColors.lightGreen, AppColors.darkGreen],
                )
              : null,
          color: isSelected ? null : AppColors.kBackGround,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side:isSelected? BorderSide.none:BorderSide(color: Color(0xffDCE8E1), width: 0.5)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            Text(
              label,
              style: AppStyles.mediumCairo14(
                context,
              ).copyWith(color:isSelected? AppColors.kWhite : AppColors.kBlack),
            ),
            Text(
              badge,
              style: AppStyles.mediumCairo14(
                context,
              ).copyWith(color: isSelected? AppColors.kWhite : AppColors.kBlack),
            ),
          ],
        ),
      ),
    );
  }
}
