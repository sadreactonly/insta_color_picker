# insta_color_picker
A Flutter package that offers an Instagram-inspired color picker for elegant color selection.

## Installation

To use the Insta Color Picker package, add it to your `pubspec.yaml` file:

``` yaml
dependencies:
  insta_color_picker: ^1.0.0
```
## Basic Usage


``` Dart
import 'package:insta_color_picker/insta_color_picker.dart';


Color _color;

InstaColorPicker(
    selectedColor: _color,
    pageController: PageController()
    onColorSelected: (color) {
        setState(() {
            _color = color;
        });
    },
),
```

## Advanced Usage

``` Dart
import 'package:insta_color_picker/insta_color_picker.dart';



Color _color;

InstaColorPicker(
  activeDotColor: Colors.red,
  colorButtonSize: 60,
  colorsList: myColorPalettes,
  onColorSelected: (color) {
    // Handle the selected color
    print('Selected color: $color');
  },
  pageController: PageController(),
  // ... other parameters
)
```
## Customisation
The InstaColorPicker class provides the following parameters for customization:

`activeDotColor`
`activeDotScale`
`colorButtonSize`
`colorButtonBorderColor`
`colorsList`
`colorPaletteHeight`
`dotColor`
`dotHeight`
`dotWidth`
`height`
`icon`
`iconPadding`
`iconSize`
`onColorSelected`
`pageController`
`pageIndicatorSpacing`
`selectedColorSize`
`selectedColor`

Refer to the class documentation for detailed information about each parameter.

Examples
For more detailed usage examples, please refer to the example directory in this repository.



