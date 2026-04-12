import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_number_badge.dart';

class AzkarDetailsItem extends StatefulWidget {
  const AzkarDetailsItem({super.key});

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
        leading: AzkarNumberBadge(number: 30),
        title: Text(
          'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ',
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
                child: Text('رواه مسلم', style: AppStyles.mediumCairo12(context)),
              ),
              CustomCard(
                borderColor: AppColors.lightGreen.withValues(alpha: 0.12),
                elevation: 0,
                radius: 20,
                child: Text(
                  'حفظ من شر اليوم',
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
