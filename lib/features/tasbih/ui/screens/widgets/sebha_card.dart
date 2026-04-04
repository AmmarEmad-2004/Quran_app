import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/display_progress_card_widget.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_card_button.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_card_footer.dart';

class SebhaCard extends StatelessWidget {
  const SebhaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p20(context)),
      child: SizedBox(
        width: double.infinity,
        child: CustomCard(
          cardColor: AppColors.kWhite,
          borderColor: Colors.transparent,
          elevation: 10,
          radius: 20,
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p20(context)),
            child: Column(
              spacing: 12,
              children: [
                Text(
                  'سبحان الله',
                  style: AppStyles.regularAmiri30(
                    context,
                  ).copyWith(color: AppColors.lightGreen),
                ),
                DisplayProgressCardWidget(),
                TasbihCardButton(),
                Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                  color: AppColors.lightGreen.withValues(alpha: 0.1),
                ),
                TasbihCardFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
