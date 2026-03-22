import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/features/reminder/widgets/choose_icon_item_list.dart';

import 'add_new_reminder_widget.dart';

void showMyBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.kBackGround,
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
            ChooseIconItemList(),
          ],
        ),
      );
    },
  );
}
