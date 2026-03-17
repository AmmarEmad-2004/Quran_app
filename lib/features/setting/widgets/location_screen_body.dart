import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_gradient_button.dart';
import 'package:quran_app/features/setting/widgets/location_info_list.dart';

class LocationScreenBody extends StatelessWidget {
  const LocationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.locationIconWithShadow,
              fit: BoxFit.contain,
              width: 120,
              height: 120,
            ),
            Text(
              "تحديد الموقع",
              style: AppStyles.mediumCairo24(context).copyWith(fontSize: 30),
            ),
            Text(
              "نحتاج إلى موقعك لحساب أوقات الصلاة الدقيقة في منطقتك وإظهار المساجد القريبة منك",
              textAlign: TextAlign.center,
              style: AppStyles.regularCairo16(
                context,
              ).copyWith(color: AppColors.darkGrey),
            ),
            SizedBox(height: 20),
            Expanded(child: LocationInfoList()),
            CustomGradientButton(
              text: "السماح بالوصول للموقع",
              fontSize: 18,
              height: 50,
              image: AppImages.locationIcon,
            ),
          ],
        ),
      ),
    );
  }
}
