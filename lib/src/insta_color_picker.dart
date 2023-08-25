import 'package:flutter/material.dart';
import 'package:insta_color_picker/src/selected_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spring_button/spring_button.dart';

import 'constants.dart';

const List<List<Color>> initialColors = [
  ColorPalettes.insta1,
  ColorPalettes.insta2,
  ColorPalettes.insta3
];

final Map<int, double> _colorButtonSizes = {};

/// A customizable color picker widget inspired by Instagram's color picker UI.
///
/// This widget allows users to select colors from a predefined list of color
/// palettes. It supports various customization options to control the appearance
/// and behavior of the color picker.
///
class InstaColorPicker extends StatelessWidget {
  static const EdgeInsets defaultIconPadding = EdgeInsets.symmetric(
    horizontal: 8,
  );

  /// The color of the active dot that indicates the selected color.
  final Color activeDotColor;

  /// The scale factor applied to the active dot's size when selected.
  final double activeDotScale;

  /// The size of the color selection buttons.
  final double colorButtonSize;

  /// The border color of the color selection buttons.
  final Color colorButtonBorderColor;

  /// The list of color palettes available for selection.
  final List<List<Color>> colorsList;

  /// The height of the color palette section.
  final double colorPaletteHeight;

  /// The color of the dots that represent each color option.
  final Color dotColor;

  /// The height of the dots representing each color option.
  final double dotHeight;

  /// The width of the dots representing each color option.
  final double dotWidth;

  /// The overall height of the color picker widget.
  final double height;

  /// The optional icon displayed with the color picker.
  final IconData? icon;

  /// The padding around the optional icon.
  final EdgeInsets? iconPadding;

  /// The size of the optional icon.
  final double iconSize;

  /// A callback function that is triggered when a color is selected.
  final Function(Color) onColorSelected;

  /// Page controller.
  final PageController pageController;

  /// The spacing between page indicators in the color picker.
  final double pageIndicatorSpacing;

  /// The size of the selected color indicator.
  final double selectedColorSize;

  /// The initially selected color.
  final Color selectedColor;

  /// Creates an instance of [InstaColorPicker].
  ///
  /// The [activeDotColor], [activeDotScale], [colorButtonSize],
  /// [colorButtonBorderColor], [colorsList], [colorPaletteHeight], [dotColor],
  /// [dotHeight], [dotWidth], [height], [icon], [iconPadding], [iconSize],
  /// [onColorSelected], [pageIndicatorSpacing], [selectedColorSize], and
  /// [selectedColor] parameters allow you to customize the appearance and behavior
  /// of the color picker.
  ///
  const InstaColorPicker({
    super.key,
    this.activeDotColor = Colors.white,
    this.activeDotScale = 1,
    this.colorButtonSize = 52,
    this.colorButtonBorderColor = Colors.white,
    this.colorsList = initialColors,
    this.colorPaletteHeight = 58,
    this.dotColor = Colors.white24,
    this.dotHeight = 8,
    this.dotWidth = 8,
    this.height = 66,
    this.icon,
    this.iconPadding = defaultIconPadding,
    this.iconSize = 22,
    required this.onColorSelected,
    required this.pageController,
    this.pageIndicatorSpacing = 8,
    this.selectedColor = Colors.white,
    this.selectedColorSize = 36,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: defaultIconPadding,
                child: SelectedColor(
                  icon: icon,
                  selectedColorSize: selectedColorSize,
                  selectedColor: selectedColor,
                  iconSize: iconSize,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: SizedBox(
                  height: colorPaletteHeight,
                  child: PageView(
                      controller: pageController,
                      physics: const BouncingScrollPhysics(),
                      children: colorsList
                          .map(
                            (colorList) => FittedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children:
                                    _createColorPalette(context, colorList),
                              ),
                            ),
                          )
                          .toList()),
                ),
              )
            ],
          ),
          SmoothPageIndicator(
            onDotClicked: (pageNumber) => pageController.animateToPage(
                pageNumber,
                duration: const Duration(milliseconds: 200),
                curve: const ElasticInCurve()),
            controller: pageController, // PageController
            count: colorsList.length,
            effect: ScrollingDotsEffect(
              spacing: pageIndicatorSpacing,
              activeDotColor: activeDotColor,
              dotColor: dotColor,
              dotHeight: dotHeight,
              dotWidth: dotWidth,
              activeDotScale: activeDotScale,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _createColorPalette(BuildContext context, List<Color> colors) {
    double size = _colorButtonSizes[colors.length] ??
        _getColorButtonSize(
          colors.length,
          MediaQuery.of(context).size.width,
        );
    return [
      for (var color in colors)
        SpringButton(
          SpringButtonType.OnlyScale,
          Padding(
            padding: EdgeInsets.all(size * 0.1),
            child: AnimatedContainer(
              width: size,
              height: size,
              duration: const Duration(milliseconds: 100),
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: Border.all(
                  width: color == selectedColor ? 4 : 2,
                  color: colorButtonBorderColor,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: size * 0.1,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            onColorSelected.call(color);
          },
          useCache: false,
          scaleCoefficient: 0.9,
          duration: 1000,
        ),
    ];
  }

  double _getColorButtonSize(int itemSize, double screenWidth) {
    double maxWidth = screenWidth - colorButtonSize;
    bool isSizeOkay = false;
    double finalSize = colorButtonSize * 1.1;
    do {
      finalSize -= 2;
      double eachSize = finalSize * 1.2;
      double buttonsArea = itemSize * eachSize;
      isSizeOkay = maxWidth > buttonsArea;
    } while (!isSizeOkay);
    _colorButtonSizes[itemSize] = finalSize;
    return finalSize;
  }
}
