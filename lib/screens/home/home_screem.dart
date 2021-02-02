import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pr_cimentos/size_config.dart';

import 'components/body.dart';

class HomeScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          height: SizeConfig.tamanhoPadrao * 2,
        ),
        onPressed: () {},
      ),
      actions: [
        SizedBox(width: SizeConfig.tamanhoPadrao),
        Text("PR Cimentos"),
        SizedBox(width: SizeConfig.tamanhoPadrao),
      ],
    );
  }
}
