import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/config/constants/strings.dart';

class buildCard extends StatelessWidget {
  const buildCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            openpic,
            // 'images/mainicon.svg',
            // padding: EdgeInsets.all(5.0),
            height: SizeConfig(context).getProportionateScreenHeight(200),
          )
        ]);
  }
}
