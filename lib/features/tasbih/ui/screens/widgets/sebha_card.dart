import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/zekr_list_demo.dart';
import 'package:quran_app/core/helpers/app_padding.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/core/theme/app_styles.dart';
import 'package:quran_app/core/widgets/custom_card.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/display_progress_card_widget.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_card_button.dart';
import 'package:quran_app/features/tasbih/ui/screens/widgets/tasbih_card_footer.dart';

class SebhaCard extends StatefulWidget {
  const SebhaCard({super.key});

  @override
  State<SebhaCard> createState() => _SebhaCardState();
}

class _SebhaCardState extends State<SebhaCard> {
  int currentIndex = 0;
  int currentCount = 0;
  int numberOfRounds = 0;
  int totalDailyCount = 0;
  bool isPressed = false;

  void increaseCount() {
    setState(() => isPressed = true);
    // animation for button press
    Future.delayed(Duration(milliseconds: 150), () {
      setState(() => isPressed = false);
    });
    if (currentCount < zekr[currentIndex]["count"]) {
      setState(() {
        currentCount++;
      });
    } else {
      nextZikr();
    }
  }

  void nextZikr() {
    if (currentIndex < zekr.length - 1) {
      setState(() {
        currentIndex++;
        currentCount = 0;
      });
    } else {
      setState(() {
        currentIndex = 0;
        currentCount = 0;
      });
    }
  }

  void resetZikr() {
    setState(() {
      currentIndex = 0;
      numberOfRounds = 0;
      totalDailyCount = 0;
      currentCount = 0;
    });
  }

  int numOfRounds() {
    if (currentIndex == zekr.length - 1 &&
        currentCount == zekr[currentIndex]["count"]) {
      setState(() {
        numberOfRounds++;
      });
    }
    return numberOfRounds;
  }

  int totalCount() {
    if (currentIndex == zekr.length - 1 &&
        currentCount == zekr[currentIndex]["count"]) {
      setState(() {
        totalDailyCount += 100;
      });
    }
    return totalDailyCount;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p20(context)),
      child: SizedBox(
        width: double.infinity,
        child: CustomCard(
          cardColor: AppColors.kWhite,
          borderColor: Colors.transparent,
          elevation: 10,
          radius: 20,
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p20(context)),
            child: Column(
              spacing: 12,
              children: [
                Text(
                  zekr[currentIndex]['zikr'],
                  style: AppStyles.regularAmiri30(
                    context,
                  ).copyWith(color: AppColors.lightGreen),
                ),
                DisplayProgressCardWidget(
                  count: currentCount,
                  maxCount: zekr[currentIndex]['count'],
                ),
                TasbihCardButton(isPressed: isPressed, onTap: increaseCount),
                Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                  color: AppColors.lightGreen.withValues(alpha: 0.1),
                ),
                TasbihCardFooter(
                  resetTap: resetZikr,
                  numberOfRounds: numOfRounds(),
                  totalDailyCount: totalCount(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
