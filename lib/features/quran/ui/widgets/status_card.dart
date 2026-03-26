import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key, required this.image, required this.value, required this.label, this.valueColor, this.colorGradient1, this.colorGradient2, this.boderColor});
final String value, label, image;
final Color? valueColor, colorGradient1, colorGradient2, boderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.28,
      height: MediaQuery.of(context).size.height*0.17,
       decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [colorGradient1 ?? AppColors.lightGreen.withValues(alpha: 0.1), colorGradient2?? AppColors.gradientWhiteColor.withValues(alpha: 0.8)]),
        border: Border.all(color: boderColor ??  Color(0xffB2D4C9), width: 0.7),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, fit: BoxFit.contain,),
          Text(
            value,
            style:AppStyles.regularCairo18(context).copyWith(
              color: valueColor ?? AppColors.lightGreen,
            )
          ),
          Text(
            label,
            style: AppStyles.regularCairo12(context).copyWith(color: AppColors.darkGrey)
          ),
        ],
      ),);
  }
}