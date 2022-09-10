// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/screens/dishes_screen.dart';
import 'package:vyamshala/src/utils/widgets/Custom_container.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    List<int> text = [1,2,3,4,5];
    return Scaffold(
      appBar: AppBarTemplate(option: 3,
        requiredicon: Icons.shopping_cart_outlined,
        optionbutton: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [ 
            Padding(
              padding:
                  EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
              child: Text(
                "Menu",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            for(var i in text )
            Row(children: [
              Padding(
                padding: EdgeInsets.all(
                    SizeConfig(context).getProportionatePadding()),
                child: InkWell(
                  onTap: () {
                    Get.to(() => const DishesScreen());
                  },
                  child: CustomContainer(
                    inputHeight: 200,
                    inputWidth: 165,
                    option: 4,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(
                    SizeConfig(context).getProportionatePadding()),
                child: CustomContainer(
                  inputHeight: 200,
                  inputWidth: 165,
                  option: 4,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
