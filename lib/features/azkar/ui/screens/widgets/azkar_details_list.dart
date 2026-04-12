
import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/azkar_details_list.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_details_item.dart';

class AzkarDetailsList extends StatelessWidget {
  const AzkarDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return AzkarDetailsItem(azkarDetail:  azkarDetailsList[index],);}  
    );
  }
}