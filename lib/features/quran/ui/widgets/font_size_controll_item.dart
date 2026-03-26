
import 'package:flutter/material.dart';

class FontSizeControllItem extends StatelessWidget {
  const FontSizeControllItem({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: ShapeDecoration(
        color: const Color(0xFFF8F7F4),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0x1E0D7E5E)),
          borderRadius: BorderRadius.circular(33554400),
        ),
      ),
      child: IconButton(icon: Icon(icon), onPressed: onTap, iconSize: 14,),
    );
  }
}
