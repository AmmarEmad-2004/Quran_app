import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart' show AppColors;
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/reminder/widgets/bottom_sheet_footer_nav_buttons.dart';
import 'package:quran_app/features/reminder/widgets/bottom_sheet_preview_card.dart';

class ReminderBottomSheetFooter extends StatelessWidget {
  const ReminderBottomSheetFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        CustomCard(
          elevation: 0,
          radius: 20,
          cardColor: AppColors.lightGrey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('تكرار يومي', style: AppStyles.mediumCairo14(context)),
                GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 55,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.lightGreen,
                    ),
                    child: AnimatedAlign(
                      duration: const Duration(milliseconds: 300),
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.all(2),
                        decoration: ShapeDecoration(
                          color: AppColors.kWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33554400),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 6,
                              offset: Offset(0, 4),
                              spreadRadius: -4,
                            ),
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 15,
                              offset: Offset(0, 10),
                              spreadRadius: -3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        BottomSheetPreviewCard(),
        BottomSheetFooterNavButtons(),
      ],
    );
  }
}
