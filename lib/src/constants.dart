import 'dart:ui';

import 'package:flutter/material.dart';

/*
class Constants {
  static final List<Color> colors1 = const [
    const Color(0xFFFFFFFF),
    const Color(0xFF000000),
    const Color(0xFF3897F1),
    const Color(0xFF70C04F),
    const Color(0xFFFDCB5C),
    const Color(0xFFFC8D33),
    const Color(0xFFED4A57),
    const Color(0xFFD1086A),
    const Color(0xFFA208BA),
  ];
  static final List<Color> colors2 = const [
    const Color(0xFFED0014),
    const Color(0xFFEC858E),
    const Color(0xFFFFD3D4),
    const Color(0xFFFEDBB3),
    const Color(0xFFFFC482),
    const Color(0xFFD29046),
    const Color(0xFF99643A),
    const Color(0xFF432324),
    const Color(0xFF1C4928),
  ];
  static final List<Color> colors3 = const [
    const Color(0xFF262626),
    const Color(0xFF363636),
    const Color(0xFF555555),
    const Color(0xFF737373),
    const Color(0xFF999999),
    const Color(0xFFB2B2B2),
    const Color(0xFFC7C7C7),
    const Color(0xFFDBDBDB),
    const Color(0xFFEFEFEF),
  ];
}
*/

abstract class ColorPalettes {
  static const List<Color> insta1 = [
    PaletteColors.white,
    PaletteColors.black,
    PaletteColors.blue,
    PaletteColors.green,
    PaletteColors.yellow,
    PaletteColors.orange,
    PaletteColors.red,
    PaletteColors.magenta,
    PaletteColors.purple,
  ];

  static const List<Color> insta2 = [
    PaletteColors.brightRed,
    PaletteColors.paleRed,
    PaletteColors.palePink,
    PaletteColors.palePeach,
    PaletteColors.paleOrange,
    PaletteColors.tan,
    PaletteColors.brown,
    PaletteColors.darkBrown,
    PaletteColors.darkGreen,
  ];
  static const List<Color> insta3 = [
    PaletteColors.charcoalGray,
    PaletteColors.darkGray,
    PaletteColors.mediumGray,
    PaletteColors.lightGray,
    PaletteColors.lighterGray,
    PaletteColors.paleGray,
    PaletteColors.veryLightGray,
    PaletteColors.almostWhite,
    PaletteColors.offWhite,
  ];

  static const List<Color> oceanBreeze = [
    PaletteColors.azure,
    PaletteColors.skyBlue,
    PaletteColors.teal,
    PaletteColors.cerulean,
    PaletteColors.aquamarine,
    PaletteColors.cobalt,
    PaletteColors.turquoise,
    PaletteColors.indigo,
    PaletteColors.powderBlue,
  ];
  static const List<Color> autumnVibes = [
    PaletteColors.rust,
    PaletteColors.amber,
    PaletteColors.marigold,
    PaletteColors.sienna,
    PaletteColors.terracotta,
    PaletteColors.mustard,
    PaletteColors.brickRed,
    PaletteColors.mahogany,
    PaletteColors.copper,
  ];
  static const List<Color> pastelDream = [
    PaletteColors.lavender,
    PaletteColors.blush,
    PaletteColors.mint,
    PaletteColors.peach,
    PaletteColors.lilac,
    PaletteColors.babyBlue,
    PaletteColors.softYellow,
    PaletteColors.pistachio,
    PaletteColors.apricot,
  ];
  static const List<Color> urbanChic = [
    PaletteColors.charcoal,
    PaletteColors.slate,
    PaletteColors.mocha,
    PaletteColors.graphite,
    PaletteColors.oliveGreen,
    PaletteColors.burgundy,
    PaletteColors.navy,
    PaletteColors.taupe,
    PaletteColors.plum,
  ];
  static const List<Color> tropicalParadise = [
    PaletteColors.coral,
    PaletteColors.mango,
    PaletteColors.lime,
    PaletteColors.orchid,
    PaletteColors.tangerine,
    PaletteColors.papaya,
    PaletteColors.turquoise,
    PaletteColors.pineapple,
    PaletteColors.palmGreen,
  ];
}

class PaletteColors {
  //Instagram 1
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color blue = Color(0xFF3897F1);
  static const Color green = Color(0xFF70C04F);
  static const Color yellow = Color(0xFFFDCB5C);
  static const Color orange = Color(0xFFFC8D33);
  static const Color red = Color(0xFFED4A57);
  static const Color magenta = Color(0xFFD1086A);
  static const Color purple = Color(0xFFA208BA);

  //Instagram 2
  static const Color brightRed = Color(0xFFED0014);
  static const Color paleRed = Color(0xFFEC858E);
  static const Color palePink = Color(0xFFFFD3D4);
  static const Color palePeach = Color(0xFFFEDBB3);
  static const Color paleOrange = Color(0xFFFFC482);
  static const Color tan = Color(0xFFD29046);
  static const Color brown = Color(0xFF99643A);
  static const Color darkBrown = Color(0xFF432324);
  static const Color darkGreen = Color(0xFF1C4928);

  //Instagram 3
  static const Color charcoalGray = Color(0xFF262626);
  static const Color darkGray = Color(0xFF363636);
  static const Color mediumGray = Color(0xFF555555);
  static const Color lightGray = Color(0xFF737373);
  static const Color lighterGray = Color(0xFF999999);
  static const Color paleGray = Color(0xFFB2B2B2);
  static const Color veryLightGray = Color(0xFFC7C7C7);
  static const Color almostWhite = Color(0xFFDBDBDB);
  static const Color offWhite = Color(0xFFEFEFEF);

  //Ocean Breeze
  static const Color azure = Color(0xFF007FFF);
  static const Color skyBlue = Color(0xFF87CEEB);
  static const Color teal = Color(0xFF008080);
  static const Color cerulean = Color(0xFF007BA7);
  static const Color aquamarine = Color(0xFF7FFFD4);
  static const Color cobalt = Color(0xFF3D59AB);
  static const Color turquoise = Color(0xFF40E0D0);
  static const Color indigo = Color(0xFF4B0082);
  static const Color powderBlue = Color(0xFFB0E0E6);

  //Autumn Vibes
  static const Color rust = Color(0xFFB7410E);
  static const Color amber = Color(0xFFFFBF00);
  static const Color marigold = Color(0xFFFF9900);
  static const Color sienna = Color(0xFFA0522D);
  static const Color terracotta = Color(0xFFE2725B);
  static const Color mustard = Color(0xFFFFDB58);
  static const Color brickRed = Color(0xFFCB4154);
  static const Color mahogany = Color(0xFFC04000);
  static const Color copper = Color(0xFFB87333);

  //Pastel Dream
  static const Color lavender = Color(0xFFE6E6FA);
  static const Color blush = Color(0xFFFFC0CB);
  static const Color mint = Color(0xFF98FB98);
  static const Color peach = Color(0xFFFFDAB9);
  static const Color lilac = Color(0xFFC8A2C8);
  static const Color babyBlue = Color(0xFF89CFF0);
  static const Color softYellow = Color(0xFFFFFF99);
  static const Color pistachio = Color(0xFF93C572);
  static const Color apricot = Color(0xFFFFB347);

  //Urban Chic
  static const Color charcoal = Color(0xFF36454F);
  static const Color slate = Color(0xFF6A5ACD);
  static const Color mocha = Color(0xFF996515);
  static const Color graphite = Color(0xFF2E2E2E);
  static const Color oliveGreen = Color(0xFF556B2F);
  static const Color burgundy = Color(0xFF800020);
  static const Color navy = Color(0xFF000080);
  static const Color taupe = Color(0xFF483C32);
  static const Color plum = Color(0xFF8E4585);

  //Tropical paradise
  static const Color coral = Color(0xFFFF6F61);
  static const Color mango = Color(0xFFFFA500);
  static const Color lime = Color(0xFF00FF00);
  static const Color orchid = Color(0xFFDA70D6);
  static const Color tangerine = Color(0xFFFFA07A);
  static const Color papaya = Color(0xFFFFEFD5);
  static const Color deepBlue = Color(0xFF00008B);
  static const Color pineapple = Color(0xFFDAA520);
  static const Color palmGreen = Color(0xFF006400);
}
