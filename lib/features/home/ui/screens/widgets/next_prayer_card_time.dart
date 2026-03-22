import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class NextPrayerCardTime extends StatelessWidget {
  const NextPrayerCardTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(AppPadding.p12(context)),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.lightGreen, AppColors.darkGreen],
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Icon(Icons.watch_later_outlined, color: AppColors.kWhite),
        ),
        SizedBox(width: 12),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "الصلاة القادمة",
              style: AppStyles.regularCairo12(
                context,
              ).copyWith(color: AppColors.darkGrey),
            ),
            Text(
              "صلاة الظهر",
              style: AppStyles.mediumCairo24(
                context,
              ).copyWith(color: AppColors.kBlack),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "12:30",
              style: AppStyles.regularCairo30(
                context,
              ).copyWith(color: AppColors.lightGreen),
            ),
            Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: Color(0xff68af9b),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "بعد ساعة و 15 دقيقة",
                  style: AppStyles.regularCairo12(
                    context,
                  ).copyWith(color: AppColors.darkGrey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
