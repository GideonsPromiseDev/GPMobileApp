import 'package:flutter/material.dart';

class GideonsPromiseColors {
  static final Map<int, Color> gpBlueColorCodes = {
    50: const Color.fromRGBO(17, 70, 132, .1),
    100: const Color.fromRGBO(17, 70, 132, .2),
    200: const Color.fromRGBO(17, 70, 132, .3),
    300: const Color.fromRGBO(17, 70, 132, .4),
    400: const Color.fromRGBO(17, 70, 132, .5),
    500: const Color.fromRGBO(17, 70, 132, .6),
    600: const Color.fromRGBO(17, 70, 132, .7),
    700: const Color.fromRGBO(17, 70, 132, .8),
    800: const Color.fromRGBO(17, 70, 132, .9),
    900: const Color.fromRGBO(17, 70, 132, 1),
  };

  static final Map<int, Color> gpGrayColorCodes = {
    50: const Color.fromRGBO(144, 148, 154, .1),
    100: const Color.fromRGBO(144, 148, 154, .2),
    200: const Color.fromRGBO(144, 148, 154, .3),
    300: const Color.fromRGBO(144, 148, 154, .4),
    400: const Color.fromRGBO(144, 148, 154, .5),
    500: const Color.fromRGBO(144, 148, 154, .6),
    600: const Color.fromRGBO(144, 148, 154, .7),
    700: const Color.fromRGBO(144, 148, 154, .8),
    800: const Color.fromRGBO(144, 148, 154, .9),
    900: const Color.fromRGBO(144, 148, 154, 1),
  };

  static MaterialColor blue = MaterialColor(0xFF114684, gpBlueColorCodes);

  static MaterialColor gray = MaterialColor(0xFF90949a, gpGrayColorCodes);
}

/**
   * The colors in this are colors that "go well" with the default
   * Gideon's Promise blue (Hex #114684). These colors came from the 
   * material design color tool 
   * https://material.io/design/color/the-color-system.html#tools-for-picking-colors
   */
class GideonsPromiseColorsComplementary {
  static final Map<int, Color> brownColorCodes = {
    50: const Color.fromRGBO(132, 78, 17, .1),
    100: const Color.fromRGBO(132, 78, 17, .2),
    200: const Color.fromRGBO(132, 78, 17, .3),
    300: const Color.fromRGBO(132, 78, 17, .4),
    400: const Color.fromRGBO(132, 78, 17, .5),
    500: const Color.fromRGBO(132, 78, 17, .6),
    600: const Color.fromRGBO(132, 78, 17, .7),
    700: const Color.fromRGBO(132, 78, 17, .8),
    800: const Color.fromRGBO(132, 78, 17, .9),
    900: const Color.fromRGBO(132, 78, 17, 1),
  };

  static final Map<int, Color> tealColorCodes = {
    50: const Color.fromRGBO(17, 128, 132, .1),
    100: const Color.fromRGBO(17, 128, 132, .2),
    200: const Color.fromRGBO(17, 128, 132, .3),
    300: const Color.fromRGBO(17, 128, 132, .4),
    400: const Color.fromRGBO(17, 128, 132, .5),
    500: const Color.fromRGBO(17, 128, 132, .6),
    600: const Color.fromRGBO(17, 128, 132, .7),
    700: const Color.fromRGBO(17, 128, 132, .8),
    800: const Color.fromRGBO(17, 128, 132, .9),
    900: const Color.fromRGBO(17, 128, 132, 1),
  };

  static final Map<int, Color> bluepurpleColorCodes = {
    50: const Color.fromRGBO(21, 17, 132, .1),
    100: const Color.fromRGBO(21, 17, 132, .2),
    200: const Color.fromRGBO(21, 17, 132, .3),
    300: const Color.fromRGBO(21, 17, 132, .4),
    400: const Color.fromRGBO(21, 17, 132, .5),
    500: const Color.fromRGBO(21, 17, 132, .6),
    600: const Color.fromRGBO(21, 17, 132, .7),
    700: const Color.fromRGBO(21, 17, 132, .8),
    800: const Color.fromRGBO(21, 17, 132, .9),
    900: const Color.fromRGBO(21, 17, 132, 1),
  };

  static final Map<int, Color> purpleColorCodes = {
    50: const Color.fromRGBO(78, 17, 132, .1),
    100: const Color.fromRGBO(78, 17, 132, .2),
    200: const Color.fromRGBO(78, 17, 132, .3),
    300: const Color.fromRGBO(78, 17, 132, .4),
    400: const Color.fromRGBO(78, 17, 132, .5),
    500: const Color.fromRGBO(78, 17, 132, .6),
    600: const Color.fromRGBO(78, 17, 132, .7),
    700: const Color.fromRGBO(78, 17, 132, .8),
    800: const Color.fromRGBO(78, 17, 132, .9),
    900: const Color.fromRGBO(78, 17, 132, 1),
  };

  static final Map<int, Color> darkredColorCodes = {
    50: const Color.fromRGBO(132, 17, 71, .1),
    100: const Color.fromRGBO(132, 17, 71, .2),
    200: const Color.fromRGBO(132, 17, 71, .3),
    300: const Color.fromRGBO(132, 17, 71, .4),
    400: const Color.fromRGBO(132, 17, 71, .5),
    500: const Color.fromRGBO(132, 17, 71, .6),
    600: const Color.fromRGBO(132, 17, 71, .7),
    700: const Color.fromRGBO(132, 17, 71, .8),
    800: const Color.fromRGBO(132, 17, 71, .9),
    900: const Color.fromRGBO(132, 17, 71, 1),
  };

  // Complementary color to GP blue
  static MaterialColor brown = MaterialColor(0xFF844e11, brownColorCodes);

  // Analogous color to GP blue
  static MaterialColor teal = MaterialColor(0xFF118084, tealColorCodes);

  // Analogous color to GP blue
  static MaterialColor bluepurple =
      MaterialColor(0xFF151184, bluepurpleColorCodes);

  // Triadic color to GP blue
  static MaterialColor purple = MaterialColor(0xFF4e1184, purpleColorCodes);

  // Triadic color to GP blue
  static MaterialColor darkred = MaterialColor(0xFF841147, darkredColorCodes);
}
