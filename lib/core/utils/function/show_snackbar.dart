import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      duration: const Duration(seconds: 3),
      margin: EdgeInsets.symmetric(vertical: AppPadding.p20(context), horizontal: AppPadding.p20(context)),
      content: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.lightBeige, AppColors.darkBeige],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(vertical: AppPadding.p8(context), horizontal: AppPadding.p16(context)),
        child: Text(
          message,
         // style: const TextStyle(color: AppColors.kWhite, fontSize: 16),
        ),
      ),
    ),
  );
}
