import 'package:flutter/material.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_item.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/custom_azkar_app_bar.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [CustomAzkarAppBar(), AzkarList()]));
  }
}

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
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemCount: azkar.length,
      itemBuilder: (context, index) {
        return azkar[index];
      },
    );
  }
}
