import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/ayah_list_demo.dart';
import 'package:quran_app/features/quran/widgets/ayah_item.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class AyahList extends StatelessWidget {
  const AyahList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p16(context)),
      child: ListView.builder(
        itemCount: ayahs.length,
        itemBuilder: (context, index) {
          return AyahItem(ayahModel: ayahs[index]);
        },
      ),
    );
  }
}
