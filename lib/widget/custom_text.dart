import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final double fontsize;
  final int maxLines;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  const CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontWeight = FontWeight.w500,
      this.fontsize = 16,
      this.textAlign,
      this.textDecoration,
      this.maxLines = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      maxLines: maxLines,
      style: TextStyle(
          color: color ?? Colors.grey.shade700,
          fontWeight: fontWeight,
          fontSize: fontsize,
          decoration: textDecoration,
        // decorationThickness: 2,
        // decorationColor: kWhite,

      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
