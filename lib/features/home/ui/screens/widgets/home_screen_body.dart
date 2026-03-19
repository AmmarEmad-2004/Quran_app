import 'package:flutter/material.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_appbar.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_background.dart';
import 'package:quran_app/features/home/ui/screens/widgets/next_prayer_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bgHeight = MediaQuery.sizeOf(context).height * 0.35;
    return Column(
      children: [
        SizedBox(
          height: bgHeight,
          child: Stack(
            children: [
              CustomHomeBackground(),
              Positioned(
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    CustomHomeAppBar(),
                    SizedBox(height: 24),
                    NextPrayerCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



// Stack(
//   children: [
//     // الخلفية
//     Container(
//       height: 6,
//       decoration: BoxDecoration(
//         color: Colors.grey[300],
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),

//     // التقدم
//     FractionallySizedBox(
//       widthFactor: 0.6, // نسبة التقدم
//       child: Container(
//         height: 6,
//         decoration: BoxDecoration(
//           color: Colors.green,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//   ],
// )