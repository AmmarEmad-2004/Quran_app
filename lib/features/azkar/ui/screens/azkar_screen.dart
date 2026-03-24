import 'package:flutter/material.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/custom_azkar_app_bar.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [CustomAzkarAppBar()]));
  }
}
