import 'package:flutter/material.dart';

//text uchun widget
class CustomText extends StatefulWidget {
  final Color color;
  final String text;
  final FontWeight fontWeight;
  final double size;
  const CustomText({
    super.key,
    required this.color,
    required this.text,
    required this.fontWeight,
    required this.size,
  });

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: widget.color,
        fontWeight: widget.fontWeight,
        fontSize: widget.size,
      ),
    );
  }
}
