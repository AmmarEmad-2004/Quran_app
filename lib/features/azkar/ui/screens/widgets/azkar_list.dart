import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_item.dart';

class AzkarList extends StatelessWidget {
  const AzkarList({super.key});
  final List<Widget> azkar = const [
    AzkarItem(),
    AzkarItem(),
    AzkarItem(),
    AzkarItem(),  
    AzkarItem(),
    AzkarItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p20(context)),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.2,
        ),
        itemCount: azkar.length,
        itemBuilder: (context, index) {
          return azkar[index];
        },
      ),
    );
  }
}