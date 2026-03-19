import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';

class CustomHomeBackground extends StatelessWidget {
  const CustomHomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(48),
          bottomRight: Radius.circular(48),
        ),
        image: DecorationImage(
          image: AssetImage(AppImages.appBarBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
