import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/azkar/logic/azkar_cubit/azkar_cubit.dart';
import 'package:quran_app/core/constants/azkar_colors_cards.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_item.dart';

class AzkarList extends StatelessWidget {
  const AzkarList({super.key});
  // final List<Widget> azkar = [
  //   AzkarItem(
  //     image: AppImages.azkarSabah,
  //     title: "أذكار الصباح",
  //     subTitle: "5 ذكر",
  //     onTap: () {},
  //     colors: [Color(0xFFFF8803), Color(0xFFFD9900)],
  //   ),
  //   AzkarItem(
  //     image: AppImages.azkarSabah,
  //     title: "أذكار المساء",
  //     subTitle: "5 ذكر",
  //     onTap: () {},
  //     colors: [Color(0xFF615EFF), Color(0xFF980FFA)],
  //   ),
  //   AzkarItem(
  //     image: AppImages.azkarSabah,
  //     title: "أذكار النوم",
  //     subTitle: "5 ذكر",
  //     onTap: () {},
  //     colors: [Color(0xFF2B7FFF), Color(0xFF00B8DA)],
  //   ),
  //   AzkarItem(
  //     image: AppImages.azkarSabah,
  //     title: "أذكار بعد الصلاة",
  //     subTitle: "5 ذكر",
  //     onTap: () {},
  //     colors: [Color(0xFF00BC7C), Color(0xFF009689)],
  //   ),
  //   AzkarItem(
  //     image: AppImages.azkarSabah,
  //     title: "أدعية يومية",
  //     subTitle: "",
  //     onTap: () {},
  //     colors: [Color(0xFFFF1F56), Color(0xFFE50076)],
  //   ),
  //   AzkarItem(
  //     image: AppImages.azkarSabah,
  //     title: "آيات للحفظ",
  //     subTitle: "5 ذكر",
  //     onTap: () {},
  //     colors: [Color(0xFFFD9900), Color(0xFFD08700)],
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p20(context)),
      child: BlocBuilder<AzkarCubit, AzkarState>(
        builder: (context, state) {
          if (state is AzkarFailure) {
            return Center(child: Text(state.errMessage));
          } else if (state is AzkarCategorySuccess) {
            final azkarCategory = state.azkarCategories;
            return GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.2,
              ),
              itemCount: azkarCategory.length,
              itemBuilder: (context, index) {
                return AzkarItem(
                  azkarCategory: azkarCategory[index],
                  onTap: () {
                   GoRouter.of(context).push(AppRouters.azkarDetails, extra: azkarCategory[index]);
                  },
                  colors: AzkarColors.getGradient(index),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(color: AppColors.darkGreen),
          );
        },
      ),
    );
  }
}
