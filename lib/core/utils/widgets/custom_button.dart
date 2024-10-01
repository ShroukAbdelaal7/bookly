import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
  });
  final double? fontSize;
  final String text;
  final Color backGColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              fontSize: fontSize,
              color: textColor,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
