import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pr_cimentos/model/produtos.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProdutoInfo extends StatelessWidget {
  const ProdutoInfo({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    double tamanhoPadrao = SizeConfig.tamanhoPadrao;
    TextStyle lightTextStyle = TextStyle(color: kTextPrimary.withOpacity(0.6));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: tamanhoPadrao * 2),
      height: tamanhoPadrao * 37.5, //375
      width: tamanhoPadrao *
          (SizeConfig.orientation == Orientation.landscape ? 35 : 15),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(produto.categoria.toUpperCase(), style: lightTextStyle),
            SizedBox(height: tamanhoPadrao),
            Text(
              produto.titulo,
              style: TextStyle(
                fontSize: tamanhoPadrao * 2.4,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
                height: 1.4,
              ),
            ),
            SizedBox(height: tamanhoPadrao * 2),
            Text("Form", style: lightTextStyle),
            Text(
              "\R\$${produto.preco}",
              style: TextStyle(
                fontSize: tamanhoPadrao * 1.6, //16
                fontWeight: FontWeight.bold,
                height: 1.6,
              ),
            ),
            SizedBox(height: tamanhoPadrao * 2), //20
            Text("Cores Disponiveis", style: lightTextStyle),
            Row(
              children: <Widget>[
                buildColorBox(
                  tamanhoPadrao,
                  color: Color(0xFF7BA275),
                  isActive: true,
                ),
                buildColorBox(
                  tamanhoPadrao,
                  color: Color(0xFFD7D7D7),
                ),
                buildColorBox(
                  tamanhoPadrao,
                  color: kTextBase,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildColorBox(double defaultSize,
      {Color color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      // For  fixed value we can use cont for better performance
      padding: const EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
    );
  }
}
