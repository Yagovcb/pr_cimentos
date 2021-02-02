import 'package:flutter/material.dart';
import 'package:pr_cimentos/model/produtos.dart';
import 'package:pr_cimentos/screens/details/components/produto_descricao.dart';
import 'package:pr_cimentos/screens/details/components/produto_info.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  final Produto produto;

  const Body({Key key, this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double tamanhoPadrao = SizeConfig.tamanhoPadrao;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.larguraTela
            : SizeConfig.alturaTela - AppBar().preferredSize.height,
        child: Stack(
          children: [
            ProdutoInfo(produto: produto),
            Positioned(
              top: tamanhoPadrao * 37.5,
              left: 0,
              right: 0,
              child: ProdutoDescricao(
                produto: produto,
                press: () {},
              ),
            ),
            Positioned(
              top: tamanhoPadrao * 9.5,
              right: -tamanhoPadrao * 7.5,
              child: Hero(
                tag: produto.id,
                child: Image.network(
                  produto.imagem,
                  fit: BoxFit.cover,
                  height: tamanhoPadrao * 37.8, //378
                  width: tamanhoPadrao * 36.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
