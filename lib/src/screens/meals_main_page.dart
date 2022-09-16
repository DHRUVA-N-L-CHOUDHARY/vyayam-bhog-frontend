import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/screens/dishes_screen.dart';
import 'package:vyamshala/src/screens/menu_page.dart';
import 'package:vyamshala/src/utils/widgets/Custom_container.dart';
import 'package:vyamshala/src/utils/widgets/Custom_scroll_container.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';

class MealsmainPage extends StatelessWidget {
  const MealsmainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> text = [1,2,3,4,5];
    return Scaffold(
      appBar: const AppBarTemplate(
        option: 3,
        requiredicon: Icons.shopping_cart_outlined,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: SizeConfig(context).getProportionateScreenHeight(20),),
                //  CustomSearchBarPage(),
                SizedBox(
                  height: SizeConfig(context).getProportionateScreenHeight(35),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  // ignore: unnecessary_const
                  child: const Text("Today's Meal",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: SizeConfig(context).getProportionateScreenHeight(10),
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                  child:Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      // for(var i in text)
                      Padding(
                        padding: EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
                        child: InkWell(
                          onTap: () {
                            Get.to(()=>const MenuPage());
                          },
                          child: const CustomScrollContainer()),
                      )
                    ],
                  ),
                  ),
                ),
                SizedBox(height: SizeConfig(context).getProportionateScreenHeight(45),),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Select Your Meal",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        for(var i in text)
                        Padding(
                          padding: EdgeInsets.all(SizeConfig(context).getProportionatePadding()/2),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: CustomContainer(
                              inputHeight:
                                  SizeConfig(context).getProportionateScreenHeight(200),
                              inputWidth: SizeConfig(context).getProportionateScreenWidth(100),
                              option: 3,
                              displaytext: 'Heavy weight',
                            ),
                          ),
                        ),
                      ],
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
