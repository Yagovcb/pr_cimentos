import 'package:flutter/material.dart';
import 'package:pr_cimentos/model/produtos.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProdutoDescricao extends StatelessWidget {
  final Produto produto;
  final Function press;

  const ProdutoDescricao({Key key, @required this.produto, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double tamanhoPadrao = SizeConfig.tamanhoPadrao;
    return Container(
      constraints: BoxConstraints(minHeight: tamanhoPadrao * 44),
      padding: EdgeInsets.only(
        top: tamanhoPadrao * 9, //90
        left: tamanhoPadrao * 2, //20
        right: tamanhoPadrao * 2,
      ),
      decoration: BoxDecoration(
        color: kInputBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(tamanhoPadrao * 1.2),
          topRight: Radius.circular(tamanhoPadrao * 1.2),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              produto.titulo,
              style: TextStyle(
                fontSize: tamanhoPadrao * 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: tamanhoPadrao * 3),
            Text(
              produto.descricao,
              style: TextStyle(
                color: kTextBase.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            SizedBox(height: tamanhoPadrao * 3),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.all(tamanhoPadrao * 1.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: kPrimaryColor,
                onPressed: press,
                child: Text(
                  "Adicionar ao carrinho",
                  style: TextStyle(
                    color: kTitlePrimary,
                    fontSize: tamanhoPadrao * 1.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
