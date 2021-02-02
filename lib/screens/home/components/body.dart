import 'package:flutter/material.dart';
import 'package:pr_cimentos/components/monta_titulo.dart';
import 'package:pr_cimentos/screens/home/components/produtos_recomendados.dart';
import 'package:pr_cimentos/service/fetch_categorias.dart';
import 'package:pr_cimentos/service/fetch_produtos.dart';
import '../../../size_config.dart';
import 'categorias.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double tamanhoPadrao = SizeConfig.tamanhoPadrao;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(tamanhoPadrao * 2),
            child: MontaTitulo(
              titulo: "Veja por Categoria",
            ),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categorias(categorias: snapshot.data)
                : Center(child: Image.asset("assets/ripple.gif")),
          ),
          Divider(height: 5),
          Padding(
            padding: EdgeInsets.all(tamanhoPadrao * 2), //20
            child: MontaTitulo(titulo: "Recomendados para você"),
          ),
          FutureBuilder(
            future: fecthProdutos(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? ProdutosRecomendados(produtos: snapshot.data)
                  : Center(child: Image.asset('assets/ripple.gif'));
            },
          ),
        ],
      ),
    );
  }
}
