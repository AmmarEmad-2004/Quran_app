import 'package:flutter/material.dart';
import 'package:quran_app/core/theme/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double width;
  final double height;
  final double thumbSize;
  final Color activeColor;
  final Color inactiveColor;

  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.width = 44.0,
    this.height = 24.0,
    this.thumbSize = 20.0,
    this.activeColor = AppColors.lightGreen,
    this.inactiveColor = AppColors.lightGrey,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    // Calculate vertical padding
    final padding = (widget.height - widget.thumbSize) / 2;

    return GestureDetector(
      onTap: () => widget.onChanged(!widget.value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: widget.width,
        height: widget.height,
        decoration: ShapeDecoration(
          // Here we can swap the color based on the value
          color: widget.value ? widget.activeColor : widget.inactiveColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2, color: Colors.black.withOpacity(0)),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              top: padding,
              bottom: padding,
              // Move thumb across depending on state
              left: widget.value
                  ? (widget.width - widget.thumbSize - padding)
                  : padding,
              right: widget.value
                  ? padding
                  : (widget.width - widget.thumbSize - padding),
              child: Container(
                width: widget.thumbSize,
                height: widget.thumbSize,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF8F7F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  shadows: const [
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
          ],
        ),
      ),
    );
  }
}
