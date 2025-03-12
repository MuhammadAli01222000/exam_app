import 'package:flutter/material.dart';
///icon button cuhun widget
class CustomIcon extends StatefulWidget {
  final Icon icon;
  final Color color;
final  Function()? onTap;
  const CustomIcon({super.key, required this.icon, required this.color, this.onTap});

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: widget.onTap, icon:widget.icon,color: widget.color,);
  }
}
