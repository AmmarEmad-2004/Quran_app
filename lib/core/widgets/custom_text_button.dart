import 'package:flutter/material.dart';
import 'package:quran_app/core/helpers/app_padding.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed, required this.textStyle, this.side,
  });
  final String text;
  final Function() onPressed;
  final TextStyle textStyle;
  final BorderSide? side;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: side ?? BorderSide.none,
        ),
        padding: EdgeInsets.zero,
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p4(context)),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
