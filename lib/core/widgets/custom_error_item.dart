import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';

class CustomErrorItem extends StatelessWidget {
  const CustomErrorItem({super.key, required this.errorMessage, this.onRetry});

  final String errorMessage;
  final void Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardColor: AppColors.kWhite,
      radius: 20,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p20(context)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(AppPadding.p16(context)),
              decoration: BoxDecoration(
                color: AppColors.lightGold.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline_rounded,
                color: AppColors.lightGold,
                size: 32,
              ),
            ),
            SizedBox(height: AppPadding.p16(context)),
            Text(
              'حدث خطأ ما',
              textAlign: TextAlign.center,
              style: AppStyles.mediumCairo18(
                context,
              ).copyWith(color: AppColors.kBlack),
            ),
            SizedBox(height: AppPadding.p8(context)),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.regularCairo14(
                context,
              ).copyWith(color: AppColors.darkGrey),
            ),
            if (onRetry != null) ...[
              SizedBox(height: AppPadding.p20(context)),
              GestureDetector(
                onTap: onRetry,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p20(context),
                    vertical: AppPadding.p8(context),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.71, -0.71),
                      end: Alignment(-0.71, 0.71),
                      colors: [AppColors.lightGreen, AppColors.darkGreen],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      Icon(
                        Icons.refresh_rounded,
                        color: AppColors.kWhite,
                        size: 18,
                      ),
                      Text(
                        'إعادة المحاولة',
                        style: AppStyles.mediumCairo14(
                          context,
                        ).copyWith(color: AppColors.kWhite),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
