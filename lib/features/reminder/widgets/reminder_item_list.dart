import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/reminder_list_demo.dart';
import 'package:quran_app/features/reminder/widgets/reminder_item.dart';

class ReminderItemList extends StatelessWidget {
  const ReminderItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  16.0),
      child: ListView.builder(
        itemCount: reminders.length,
        itemBuilder: (context, index) {
          return ReminderItem(reminderModel: reminders[index],);
        },
      ),
    );
  }
}
