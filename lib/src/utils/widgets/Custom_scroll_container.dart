import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/utils/widgets/Custom_container.dart';

class CustomScrollContainer extends StatelessWidget {
  const CustomScrollContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Align(
        alignment: Alignment.topLeft,
        child: CustomContainer(
          inputHeight: SizeConfig(context).getProportionateScreenHeight(200),
          inputWidth: SizeConfig(context).getProportionateScreenWidth(200),
          option: 2,
        ),
      ),
      SizedBox(
        height: SizeConfig(context).getProportionateScreenHeight(10),
      ),
      const Align(
        alignment: Alignment.topLeft,
        child: Text(
          "Dish Meal",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25),
        ),
      ),
      const Align(
        alignment: Alignment.topLeft,
        child: Text(
          "Starting Price: 200",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 10),
        ),
      ),
    ]);
  }
}
