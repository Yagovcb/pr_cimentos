import 'package:flutter/material.dart';
import 'package:pr_cimentos/model/produtos.dart';
import 'package:pr_cimentos/screens/details/produto_detalhe.dart';
import 'package:pr_cimentos/screens/home/components/produtos_card.dart';

import '../../../size_config.dart';

class ProdutosRecomendados extends StatelessWidget {
  const ProdutosRecomendados({
    Key key,
    this.produtos,
  }) : super(key: key);
  // Because our Api provie us list of products
  final List<Produto> produtos;

  @override
  Widget build(BuildContext context) {
    double tamanhoPadrao = SizeConfig.tamanhoPadrao;
    return Padding(
      padding: EdgeInsets.all(tamanhoPadrao * 2), //20
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: produtos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) => ProdutosCard(
          produto: produtos[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProdutoDetalhe(
                  produto: produtos[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
