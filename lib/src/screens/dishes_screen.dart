import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/utils/widgets/Custom_container.dart';
import 'package:vyamshala/src/utils/widgets/Custom_dish_text.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';

class DishesScreen extends StatelessWidget {
  const DishesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    List<int> text = [1,2,3,4,5];
    return Scaffold(
        appBar: const AppBarTemplate(
        requiredicon: Icons.shopping_cart_outlined,
          option: 3,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig(context).getProportionateScreenHeight(50),
              ),
              for(var i in text)
              Padding(
                padding: EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
                child: Row(
                  children: [
                    CustomContainer(
                      inputHeight:
                          SizeConfig(context).getProportionateScreenHeight(180),
                      inputWidth:
                          SizeConfig(context).getProportionateScreenWidth(190),
                      option: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: RichText(
                          // ignore: prefer_const_constructors
                          text: TextSpan(
                            text: 'Dish Name\n',
                            style: const TextStyle(fontSize: 18,color: Colors.black),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Starting Price\n',
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12,color:Colors.black)),
                                   TextSpan(
                                  text: 'Starting Price\n Starting Price\n',
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12,color:Colors.black)),
                              TextSpan(text: 'Time 10 mins\n',
                              style: TextStyle(fontSize: 12, color: Colors.black)
                              ),
                              TextSpan(text: 'Rs:200\n',
                              style: TextStyle(fontSize: 19, color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
