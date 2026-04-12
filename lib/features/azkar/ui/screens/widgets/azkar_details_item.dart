import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/azkar/data/models/azkar_detail_model.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_number_badge.dart';

class AzkarDetailsItem extends StatefulWidget {
  const AzkarDetailsItem({super.key, required this.azkarDetail});
  final AzkarDetailModel azkarDetail;
  @override
  State<AzkarDetailsItem> createState() => _AzkarDetailsItemState();
}

class _AzkarDetailsItemState extends State<AzkarDetailsItem> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardColor: AppColors.kWhite,
      radius: 20,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p20(context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AzkarNumberBadge(number: widget.azkarDetail.count),
            const SizedBox(width: 8),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.azkarDetail.title,
                    style: AppStyles.regularCairo16(context),
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.end,
                    children: [
                      CustomCard(
                        cardColor: AppColors.lightGold,
                        elevation: 0,
                        radius: 20,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppPadding.p8(context),
                            vertical: AppPadding.p6(context),
                          ),
                          child: Text(
                            widget.azkarDetail.reference,
                            style: AppStyles.mediumCairo12(context),
                          ),
                        ),
                      ),
                      CustomCard(
                        cardColor: AppColors.kWhite,
                        borderColor: AppColors.lightGreen.withValues(
                          alpha: 0.12,
                        ),
                        elevation: 0,
                        radius: 20,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppPadding.p8(context),
                            vertical: AppPadding.p6(context),
                          ),
                          child: Text(
                            widget.azkarDetail.description,
                            style: AppStyles.mediumCairo12(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: () => setState(() => isLiked = !isLiked),
              child: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked
                    ? AppColors.lightGreen
                    : AppColors.darkGrey.withValues(alpha: 0.7),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
