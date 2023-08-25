import 'package:flutter/material.dart';

class SelectedColor extends StatelessWidget {
  final Color selectedColor;
  final IconData? icon;
  final double iconSize;
  final double selectedColorSize;

  const SelectedColor(
      {super.key,
      required this.selectedColor,
      this.icon,
      required this.selectedColorSize,
      required this.iconSize})
      : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: selectedColorSize,
      height: selectedColorSize,
      decoration: BoxDecoration(
        color: selectedColor,
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            color: Colors.black38,
          ),
        ],
      ),
      child: icon != null
          ? Icon(
              icon,
              color: selectedColor.computeLuminance() > 0.5
                  ? Colors.black
                  : Colors.white,
              size: iconSize,
            )
          : null,
    );
  }
}
