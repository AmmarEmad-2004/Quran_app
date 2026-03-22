import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_styles.dart';

import 'add_new_reminder_widget.dart';

void showMyBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text('إضافة تذكير جديد', style: AppStyles.semiBoldCairo24(context)),
           AddNewReminderWidget(),

            ListTile(
              leading: const Icon(Icons.link),
              title: const Text("Copy Link"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text("Delete"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
