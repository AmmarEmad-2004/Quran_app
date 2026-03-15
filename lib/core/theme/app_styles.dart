import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

abstract class AppStyles {
static TextStyle regularCairo12(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 12), 
    fontFamily: 'Cairo',
    color: AppColors.darkGrey,
    fontWeight: FontWeight.w400,
    height: 1.333, 
    letterSpacing: 0.6,
  );
}

static TextStyle mediumCairo24(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 24), 
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w500,

  );
}

static TextStyle regularCairo16(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w400,

  );
}
static TextStyle regularCairo14(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w400,

  );
}

static TextStyle semiBoldCairo24(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w600,

  );
}
static TextStyle regularCairo18(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w400,
  );
}

static TextStyle regularAmiri20(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Amiri',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w400,
  );
}

static TextStyle regularCairo30(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 30),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w400,
  );
}

static TextStyle mediumCairo14(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w500,
  );
}

static TextStyle mediumCairo16(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w500,
  );
}

static TextStyle mediumCairo18(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w500,
  );
}

static TextStyle mediumCairo36(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 36),
    fontFamily: 'Cairo',
    color: AppColors.kBlack,
    fontWeight: FontWeight.w500,
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
