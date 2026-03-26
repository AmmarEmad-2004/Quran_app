import 'package:flutter/material.dart';
import 'package:quran_app/features/quran/ui/widgets/quran_screen_body.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const QuranScreenBody());
  }
}