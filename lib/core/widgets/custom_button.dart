import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.titleColor,
    this.borderRadius,
    required this.title,
    this.fontSize,
  });
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: AppStyles.textStyle18.copyWith(
            color: titleColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
