import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/gradient_appbar.dart';
import 'package:quran_app/features/reminder/widgets/reminder_appbar_content.dart';

class ReminderScreenBody extends StatelessWidget {
  const ReminderScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       GradientAppbar(radius: 0, height: 0.1, child: ReminderAppbarContent())],
    );
  }
}
