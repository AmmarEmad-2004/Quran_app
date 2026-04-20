import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/home/data/models/category_model.dart';
import 'package:quran_app/features/home/ui/screens/widgets/category_card.dart';

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = [
      CategoryModel(
        title: 'المصحف',
        subTitle: 'قراءة القرآن الكريم',
        image: AppImages.mushafIcon,
        gradientColors: [AppColors.lightGreen, AppColors.darkGreen],
        onTap: () {
          GoRouter.of(context).push(AppRouters.quran);
        },
      ),
      CategoryModel(
        title: 'الأذان',
        subTitle: 'مواقيت الصلاة',
        image: AppImages.clockIcon,
        gradientColors: [AppColors.lightGold, AppColors.darkGold],
        onTap: () {
          GoRouter.of(context).push(AppRouters.prayer);
        },
      ),
      CategoryModel(
        title: 'الأدعية والأذكار',
        subTitle: 'حصن المسلم',
        image: AppImages.handIcon,
        gradientColors: [AppColors.lightGreen, AppColors.darkGreen],
        onTap: () {
          GoRouter.of(context).push(AppRouters.azkar);
        },
      ),
      CategoryModel(
        title: 'التذكيرات',
        subTitle: 'تنبيهات يومية',
        image: AppImages.notificationIcon,
        gradientColors: [AppColors.lightGold, AppColors.darkGold],
        onTap: () {},
      ),
      CategoryModel(
        title: 'المسبحة',
        subTitle: 'عداد التسبيح',
        image: AppImages.sebhaIcon,
        gradientColors: [AppColors.lightGreen, AppColors.darkGreen],
        onTap: () {
          GoRouter.of(context).push(AppRouters.tasbih);
        },
      ),

      CategoryModel(
        title: 'المساجد',
        subTitle: 'أقرب المساجد ',
        image: AppImages.locationIcon,
        gradientColors: [AppColors.lightGold, AppColors.darkGold],
        onTap: () {},
      ),
    ];
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.12, // Adjust for CategoryCard contents
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return CategoryCard(category: categories[index]);
      },
    );
  }
}
