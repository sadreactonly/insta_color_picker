import 'package:flutter/material.dart';

/// A widget that displays a selected color along with an optional icon.
///
/// This widget is designed to visually represent a selected color with an
/// optional icon placed on top of it. It is typically used in scenarios where
/// users can choose a color and associate it with a specific meaning or action.
class SelectedColor extends StatelessWidget {
  /// The color that is visually represented by this widget.
  final Color selectedColor;

  /// The optional icon to display on top of the selected color.
  final IconData? icon;

  /// The size of the optional icon.
  final double iconSize;

  /// The size of the selected color display area.
  final double selectedColorSize;

  /// Creates a [SelectedColor] widget.
  ///
  /// The [selectedColor] parameter is required and defines the color that
  /// will be displayed by the widget. The [selectedColorSize] parameter
  /// specifies the width and height of the color display area. The [icon]
  /// parameter, if provided, displays an icon on top of the color.
  /// The [iconSize] parameter defines the size of the displayed icon.
  const SelectedColor({
    Key? key,
    required this.selectedColor,
    this.icon,
    required this.selectedColorSize,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Builds the widget's UI hierarchy.
    ///
    /// The [Container] widget is used to visually represent the selected color.
    /// It has a circular shape and a border with a width of 2 pixels, colored
    /// in white. The [BoxShadow] widget adds a shadow effect to the container.
    /// If an [icon] is provided, an [Icon] widget is displayed on top of the
    /// color, with its color depending on the luminance of the selected color.
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
