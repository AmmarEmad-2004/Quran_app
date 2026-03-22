import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_text_feild.dart';
import 'package:quran_app/features/reminder/widgets/time_of_reminder_menu.dart';

class AddNewReminderWidget extends StatefulWidget {
  const AddNewReminderWidget({super.key});

  @override
  State<AddNewReminderWidget> createState() => _AddNewReminderWidgetState();
}

class _AddNewReminderWidgetState extends State<AddNewReminderWidget> {
  final addressController = TextEditingController();
  final timeController = TextEditingController();
  @override
  void dispose() {
    addressController.dispose();
    timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('عنوان التذكير', style: AppStyles.mediumCairo14(context)),
        CustomTextField(
          hint: 'مثال: صلاة الضحى، قراءة ورد...',
          controller: addressController,
          fillColor: AppColors.kWhite,
          isDense: false,
        ),
        Text('وقت التذكير', style: AppStyles.mediumCairo14(context)),
        Row(
          spacing: 8,
          children: [
            Flexible(
              flex: 4,
              child: CustomTextField(
                controller: timeController,
                fillColor: AppColors.kWhite,
                isDense: false,
              ),
            ),
            TimeOfReminderMenu(),
          ],
        ),
      ],
    );
  }
}
