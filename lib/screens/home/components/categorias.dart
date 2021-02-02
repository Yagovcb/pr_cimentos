import 'package:flutter/material.dart';
import 'package:pr_cimentos/model/categoria.dart';
import 'package:pr_cimentos/screens/home/components/categoria_card.dart';

class Categorias extends StatelessWidget {
  final List<Categoria> categorias;
  const Categorias({
    Key key,
    this.categorias,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categorias.length,
          (index) => CategoriaCard(
            categoria: categorias[index],
          ),
        ),
      ),
    );
  }
}
