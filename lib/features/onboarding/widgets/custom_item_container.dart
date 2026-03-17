import 'package:flutter/material.dart';

class CustomItemContainer extends StatelessWidget {
  const CustomItemContainer({
    super.key,
    required this.image, required this.gradientColor1, required this.gradientColor2,
    
  });
  final String image;
  final Color gradientColor1 ;
  final Color gradientColor2 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff248267), width: 4),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [gradientColor1, gradientColor2],
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Image.asset(image),
      ),
    );
  }
}
