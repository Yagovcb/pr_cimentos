import 'package:flutter/material.dart';
import 'package:pr_cimentos/components/monta_titulo.dart';
import 'package:pr_cimentos/model/produtos.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProdutosCard extends StatelessWidget {
  const ProdutosCard({
    Key key,
    this.produto,
    this.press,
  }) : super(key: key);

  final Produto produto;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double tamanhoPadrao = SizeConfig.tamanhoPadrao;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: tamanhoPadrao * 14.5, //145
        decoration: BoxDecoration(
          color: kSecundaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: produto.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif",
                    image: produto.imagem,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: tamanhoPadrao),
                child: MontaTitulo(titulo: produto.titulo),
              ),
              SizedBox(height: tamanhoPadrao / 2),
              Text("\R\$${produto.preco}"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
