import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/constants/sura_list_demo.dart';
import 'package:quran_app/core/routing/app_routers.dart';
import 'package:quran_app/features/quran/widgets/surah_item.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class SurahsList extends StatelessWidget {
  const SurahsList({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16(context)),
      child: ListView.builder(
        itemCount: surahList.length,
        itemBuilder: (context, index) {
          return SurahItem(
            surahModel: surahList[index],
            onTap: () {
              GoRouter.of(context).push(AppRouters.quranDetails);
            },
          );
        },
      ),
    );
  }
}
