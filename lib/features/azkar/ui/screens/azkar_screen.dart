import 'package:flutter/material.dart';
import 'package:quran_app/features/azkar/ui/screens/widgets/azkar_screen_body.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AzkarScreenBody(),
    );
  }
}