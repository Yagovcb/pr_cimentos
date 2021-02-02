import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pr_cimentos/constants.dart';
import 'package:pr_cimentos/model/produtos.dart';

import '../../size_config.dart';
import 'components/body.dart';

class ProdutoDetalhe extends StatelessWidget {
  final Produto produto;

  const ProdutoDetalhe({Key key, this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecundaryColor,
      appBar: buildAppBar(context),
      body: Body(produto: produto),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/bag.svg"),
        onPressed: () {},
      ),
      SizedBox(width: SizeConfig.tamanhoPadrao),
    ],
  );
}
