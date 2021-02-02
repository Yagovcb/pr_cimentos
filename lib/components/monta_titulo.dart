import 'package:flutter/material.dart';
import '../size_config.dart';

class MontaTitulo extends StatelessWidget {
  const MontaTitulo({
    Key key,
    this.titulo,
  }) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    double tamanhoPadrao = SizeConfig.tamanhoPadrao;
    return Text(
      titulo,
      style: TextStyle(
        fontSize: tamanhoPadrao * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
