import 'package:flutter/material.dart';
import 'package:pr_cimentos/components/monta_titulo.dart';
import 'package:pr_cimentos/model/categoria.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CategoriaCard extends StatelessWidget {
  const CategoriaCard({
    Key key,
    @required this.categoria,
  }) : super(key: key);
  final Categoria categoria;

  @override
  Widget build(BuildContext context) {
    double tamanhoPadrao = SizeConfig.tamanhoPadrao;
    return Padding(
      padding: EdgeInsets.all(tamanhoPadrao * 2), //20
      child: SizedBox(
        width: tamanhoPadrao * 20.5,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipPath(
                clipper: CategoriaCustomShape(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(tamanhoPadrao * 2),
                    color: kSecundaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MontaTitulo(titulo: categoria.titulo),
                        SizedBox(height: tamanhoPadrao),
                        Text(
                          "${categoria.numProdutos} + Produtos",
                          style: TextStyle(
                            color: kTitlePrimary.withOpacity(0.6),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.15,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/gifs/spinner.gif",
                    image: categoria.imagem,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriaCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double altura = size.height;
    double largura = size.width;
    double canto = 30;

    path.lineTo(0, altura - canto);
    path.quadraticBezierTo(0, altura, canto, altura);
    path.lineTo(largura - canto, altura);
    path.quadraticBezierTo(largura, altura, largura, altura - canto);
    path.lineTo(largura, canto);
    path.quadraticBezierTo(largura, 0, largura - canto, 0);
    path.lineTo(canto, canto * 0.75);
    path.quadraticBezierTo(0, canto, 0, canto * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
