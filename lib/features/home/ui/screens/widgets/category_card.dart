import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/home/data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: category.onTap,
      child: Card(
        color: AppColors.kWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.only(
            top: AppPadding.p20(context),
            right: AppPadding.p20(context),
            left: AppPadding.p20(context),
            bottom: AppPadding.p20(context),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(AppPadding.p14(context)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: category.gradientColors,
                  ),
                ),
                child: Image.asset(category.image),
              ),
              Text(category.title, style: AppStyles.mediumCairo18(context)),
              Text(category.subTitle, style: AppStyles.regularCairo12(context)),
            ],
          ),
        ),
      ),
    );
  }
}
