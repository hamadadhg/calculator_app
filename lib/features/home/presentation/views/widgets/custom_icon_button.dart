import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.iconData,
    required this.color,
    required this.percent,
    this.onLongPress,
  });
  final void Function()? onPressed;
  final VoidCallback? onLongPress;
  final IconData iconData;
  final Color color;
  final double percent;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return IconButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      icon: Icon(iconData, color: color, size: height * percent),
    );
  }
}
