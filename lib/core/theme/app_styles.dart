import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

abstract class AppStyles {
static TextStyle styleRegular12Cairo(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 12), // 18, 30, 20
    fontFamily: 'Cairo',
    color: AppColors.darkGrey,
    fontWeight: FontWeight.w400,
    height: 1.333, 
    letterSpacing: 0.6,
  );
}

static TextStyle styleMedium24Cairo(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 24),  // 36, 18, 16, 14
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w500,
    // height: 1.333, 
    // letterSpacing: 0,
  );
}

static TextStyle styleRegular16Cairo(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w400,
    // height: 1.5, 
    // letterSpacing: 0,
  );
}

static TextStyle styleSemiBold24Cairo(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w600,
    height: 1.333, 
    letterSpacing: 0,
  );
}

}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .9;
  double upperLimit = fontSize * 1.1;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 1024) {
    return width / 800;
  } else {
    return width / 1000;
  }
}
