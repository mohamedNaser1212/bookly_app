import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.TextColor,
      this.borderRadius,
      required this.text,
      this.fontsize, this.onPressed});
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color TextColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                color: TextColor,
                fontWeight: FontWeight.w900,
                fontSize: fontsize),
          )),
    );
  }
}
