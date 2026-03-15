import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_styles.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({
    super.key,
    this.onTap,
    required this.text,
    this.buttonColor,
    this.textColor,
    this.icon,
    this.borderColor,
    this.height, this.fontSize,
  });
  final VoidCallback? onTap;
  final String text;
  final Color? buttonColor, textColor;
  final IconData? icon;
  final BoxBorder? borderColor;
  final double? height, fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(16),
          border: borderColor ?? Border.all(color: Colors.grey.shade300),
        ),
        height: height ?? 56,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
           spacing: 2,
            children: [
             // if (image != null) Image.asset(image!, fit: BoxFit.contain),
              Text(
                text,
                style: AppStyles.mediumCairo24(context).copyWith(fontSize: fontSize ?? 14)
              ),
              Icon(icon, color: textColor, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
