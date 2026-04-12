import 'package:flutter/material.dart';
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
      child: ListTile(
        //contentPadding: EdgeInsets.zero,
        leading: AzkarNumberBadge(number: widget.azkarDetail.count),
        title: Text(
          widget.azkarDetail.title,
          style: AppStyles.regularCairo16(context),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 8),
          child: Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomCard(
                cardColor: AppColors.darkGold,
                elevation: 0,
                radius: 20,
                child: Text(widget.azkarDetail.reference, style: AppStyles.mediumCairo12(context)),
              ),
              CustomCard(
                borderColor: AppColors.lightGreen.withValues(alpha: 0.12),
                elevation: 0,
                radius: 20,
                child: Text(
                  widget.azkarDetail.description,
                  style: AppStyles.mediumCairo12(context),
                ),
              ),
            ],
          ),
        ),
        trailing: GestureDetector(
          onTap: () => setState(() => isLiked = !isLiked),
          child: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? AppColors.lightGreen : AppColors.darkGrey,
            size: 22,
          ),
        ),
      ),
    );
  }
}
