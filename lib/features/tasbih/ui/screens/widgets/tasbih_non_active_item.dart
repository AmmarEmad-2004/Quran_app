import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';

class TasbihNonActiveItem extends StatelessWidget {
  const TasbihNonActiveItem({super.key, required this.zekr});
  final String zekr;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.40,
      child: CustomCard(
        elevation: 0,
        cardColor: AppColors.kWhite,
        borderColor: Colors.transparent,
        radius: 20,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p20(context)),
            child: Text(zekr, style: AppStyles.regularAmiri18(context)),
          ),
        ),
      ),
    );
  }
}
