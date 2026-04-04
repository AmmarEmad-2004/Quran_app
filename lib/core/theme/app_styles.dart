import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

abstract class AppStyles {
  // ─────────────────────────────────────────
  // Amiri Font
  // ─────────────────────────────────────────

   /// Amiri · Regular · 18
  static TextStyle regularAmiri18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Amiri',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }

  /// Amiri · Regular · 20
  static TextStyle regularAmiri20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Amiri',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }

   /// Amiri · Regular · 24
  static TextStyle regularAmiri24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Amiri',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }

   /// Amiri · Regular · 24
  static TextStyle regularAmiri30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Amiri',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }

  // ─────────────────────────────────────────
  // Cairo Font · Regular (w400)
  // ─────────────────────────────────────────

  /// Cairo · Regular · 12
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

  /// Cairo · Regular · 14
  static TextStyle regularCairo14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Cairo',
      color: AppColors.darkGrey,
      fontWeight: FontWeight.w400,
    );
  }

  /// Cairo · Regular · 16
  static TextStyle regularCairo16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }

  /// Cairo · Regular · 24
  static TextStyle regularCairo24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }
  
  /// Cairo · Regular · 18
  static TextStyle regularCairo18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }

  /// Cairo · Regular · 30
  static TextStyle regularCairo30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }

  /// Cairo · Regular · 72
  static TextStyle regularCairo72(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 72),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w400,
    );
  }

  // ─────────────────────────────────────────
  // Cairo Font · Medium (w500)
  // ─────────────────────────────────────────

  /// Cairo · Medium · 12
  static TextStyle mediumCairo12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w500,
    );
  }

  /// Cairo · Medium · 14
  static TextStyle mediumCairo14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w500,
    );
  }

  /// Cairo · Medium · 16
  static TextStyle mediumCairo16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w500,
    );
  }

  /// Cairo · Medium · 18
  static TextStyle mediumCairo18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w500,
    );
  }

  /// Cairo · Medium · 24
  static TextStyle mediumCairo24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w500,
    );
  }

  /// Cairo · Medium · 30
  static TextStyle mediumCairo30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w500,
    );
  }

  /// Cairo · Medium · 36
  static TextStyle mediumCairo36(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w500,
    );
  }

  // ─────────────────────────────────────────
  // Cairo Font · SemiBold (w600)
  // ─────────────────────────────────────────

  /// Cairo · SemiBold · 24
  static TextStyle semiBoldCairo24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Cairo',
      color: AppColors.kBlack,
      fontWeight: FontWeight.w600,
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Responsive Font Helpers
// ─────────────────────────────────────────────────────────────────────────────

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
