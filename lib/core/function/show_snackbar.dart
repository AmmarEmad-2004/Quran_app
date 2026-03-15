import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      content: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.lightBeige, AppColors.darkBeige],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(
          message,
         // style: const TextStyle(color: AppColors.kWhite, fontSize: 16),
        ),
      ),
    ),
  );
}
