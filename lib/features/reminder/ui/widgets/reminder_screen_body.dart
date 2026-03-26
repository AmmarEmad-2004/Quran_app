import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/widgets/custom_button.dart';
import 'package:quran_app/core/widgets/gradient_appbar.dart';
import 'package:quran_app/features/reminder/ui/widgets/reminder_appbar_content.dart';
import 'package:quran_app/features/reminder/ui/widgets/reminder_item_list.dart';
import 'package:quran_app/features/reminder/ui/widgets/reminder_screen_footer.dart';
import 'package:quran_app/features/reminder/ui/widgets/show_bottom_sheet.dart';

class ReminderScreenBody extends StatelessWidget {
  const ReminderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        GradientAppbar(radius: 24, height: 0.1, child: ReminderAppbarContent()),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ReminderItemList(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButon(
            text: 'إضافة تذكير جديد',
            fontSize: 16,
            height: 70,
            buttonColor: AppColors.kWhite,
            rightIcon: Icons.add,
            textColor: AppColors.darkGrey,
            borderColor: Border.all(
              color: AppColors.lightGreen.withValues(alpha: 0.12),
            ),
            onTap: () {
              showMyBottomSheet(context);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ReminderScreenFooter(),
        ),
      ],
    );
  }
}
