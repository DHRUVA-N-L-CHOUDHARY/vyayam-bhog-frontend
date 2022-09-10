import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/utils/widgets/Custom_container.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: const AppBarTemplate(option: 3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig(context).getProportionateScreenHeight(50),),
            const Text("Gym Events",
            style: TextStyle(
              fontSize: 35
            ),
            ),
            Center(
              child: CustomContainer(inputHeight: SizeConfig(context).getProportionateScreenHeight(200), inputWidth: SizeConfig(context).getProportionateScreenWidth(350), displaytext: "Time: 13:35 to 14:35",)
              ),
            SizedBox(height: SizeConfig(context).getProportionateScreenHeight(50),),
            const Text("Yoga Events",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 35
            ),
            ),
            Center(child: CustomContainer(inputHeight: SizeConfig(context).getProportionateScreenHeight(200), inputWidth: SizeConfig(context).getProportionateScreenWidth(350),displaytext: "Time: 15:35 to 17:35",)),
            SizedBox(height: SizeConfig(context).getProportionateScreenHeight(50),),
            const Text("Meditation Events",
            style: TextStyle(
              fontSize: 35
            ),),
             Center(child: CustomContainer(inputHeight: SizeConfig(context).getProportionateScreenHeight(200), inputWidth: SizeConfig(context).getProportionateScreenWidth(350),displaytext: "Time: 13:35 to 14:35",))
          ],
        )),
    );
  }
}