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
    this.width = 45.0,
    this.height = 25.0,
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
    // Calculate the padding inside the track based on height and thumbSize
    final padding = (widget.height - widget.thumbSize) / 2;

    return GestureDetector(
      onTap: () => widget.onChanged(!widget.value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.height / 2),
          color: widget.value ? widget.activeColor : widget.inactiveColor,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              top: padding,
              bottom: padding,
              left: widget.value ? (widget.width - widget.thumbSize - padding) : padding,
              right: widget.value ? padding : (widget.width - widget.thumbSize - padding),
              child: Container(
                width: widget.thumbSize,
                height: widget.thumbSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: const Offset(0, 1),
                    )
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
