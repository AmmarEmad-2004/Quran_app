import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.maxLines = 1,
    this.controller,
    this.icon,
    this.fillColor,
    this.hintColor,
    this.onSubmitted,
  });
  final String? hint;
  final Color? hintColor;
  final int? maxLines;
  final Icon? icon;
  final Color? fillColor;
  final TextEditingController? controller;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      maxLines: maxLines,
      onSubmitted: onSubmitted,
      style: AppStyles.regularCairo14(
        context,
      ).copyWith(color: AppColors.kBlack),
      decoration: InputDecoration(
       isDense: true,
        contentPadding: EdgeInsets.zero,
        hintText: hint,
        prefixIcon: icon,
        filled: true,
        fillColor: fillColor ?? AppColors.lightGrey.withValues(alpha: 0.15),
        hintStyle: AppStyles.regularCairo14(
          context,
        ).copyWith(color: AppColors.darkGrey),
        border: border(context),
        focusedBorder: border(context),
        enabledBorder: border(context),
      ),
    );
  }

  OutlineInputBorder border(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: AppColors.lightGrey.withValues(alpha: 0.4),
        width: 0.5,
      ),
    );
  }
}
