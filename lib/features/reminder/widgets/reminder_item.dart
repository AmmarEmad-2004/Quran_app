import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/core/widgets/custom_gradient_background.dart';

class ReminderItem extends StatelessWidget {
  const ReminderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardColor: AppColors.kWhite,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListTile(
          leading: CustomGradientBackground(
            sizeWidth: 55,
            borderRadius: 22,
            colorGradient1: AppColors.lightGreen,
            colorGradient2: AppColors.darkGreen,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  AppImages.notificationIcon,
                  width: 25,
                  height: 25,
                ),
              ),
            ),
          ),
          title: Text('صدقة يومية', style: AppStyles.mediumCairo18(context)),
          subtitle: Row(
            children: [
              Icon(Icons.notifications_none, size: 14, color: AppColors.kWhite),
              Text('12:00 م', style: AppStyles.regularCairo14(context)),
            ],
          ),
          trailing: GestureDetector(
            onTap: () {},
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 45,
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 300),
                alignment: Alignment.centerRight,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33554400),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 6,
                        offset: Offset(0, 4),
                        spreadRadius: -4,
                      ),
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 15,
                        offset: Offset(0, 10),
                        spreadRadius: -3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
