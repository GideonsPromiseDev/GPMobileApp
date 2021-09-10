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
