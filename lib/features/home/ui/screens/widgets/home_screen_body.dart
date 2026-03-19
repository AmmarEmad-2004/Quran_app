import 'package:flutter/material.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_appbar.dart';
import 'package:quran_app/features/home/ui/screens/widgets/custom_home_background.dart';

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
                top: 16,
                left: 20,
                right: 20,
                child: CustomHomeAppBar(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


