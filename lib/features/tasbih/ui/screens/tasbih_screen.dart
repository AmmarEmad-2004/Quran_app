import 'package:flutter/material.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_screen_body.dart';

class TasbihScreen extends StatelessWidget {
  const TasbihScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TasbihScreenBody(),
    );
  }
}