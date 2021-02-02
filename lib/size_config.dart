import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double larguraTela;
  static double alturaTela;
  static double tamanhoPadrao;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    larguraTela = _mediaQueryData.size.width;
    alturaTela = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    tamanhoPadrao = orientation == Orientation.landscape
        ? larguraTela * 0.024
        : alturaTela * 0.024;
  }
}
