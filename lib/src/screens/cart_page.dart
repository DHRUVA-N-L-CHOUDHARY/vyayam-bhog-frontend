// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/utils/widgets/Custom_container.dart';
import 'package:vyamshala/src/utils/widgets/Custom_sized_box.dart';
import 'package:vyamshala/src/utils/widgets/Delivery_address_widget.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2];
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: const AppBarTemplate(
        option: 3,
        requiredicon: Icons.shopping_cart_outlined,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: EdgeInsets.all(
                        SizeConfig(context).getProportionatePadding() * 2),
                    child: const Align(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Order List",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        )),
                  ),
                  const CustomSizedBox(
                    inputHeight: 20,
                    inputWidth: 300,
                  ),
                  for (var i in text)
                    Padding(
                      padding: EdgeInsets.all(
                          SizeConfig(context).getProportionatePadding()),
                      child: Row(
                        children: [
                          CustomContainer(
                            inputHeight: SizeConfig(context)
                                .getProportionateScreenHeight(180),
                            inputWidth: SizeConfig(context)
                                .getProportionateScreenWidth(190),
                            option: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: RichText(
                                // ignore: prefer_const_constructors
                                text: TextSpan(
                                  text: 'Dish Name\n',
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.black),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: 'Rs:200\n',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black)),
                                    TextSpan(
                                        text: '\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: '\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: 'Quantity\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const CustomSizedBox(inputHeight: 15, inputWidth: 300),
            Padding(
              padding: EdgeInsets.all(
                  SizeConfig(context).getProportionatePadding() * 1.5),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Delivery To",
                  style: TextStyle(fontSize: 30, color: kPrimaryColor),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
              child: const DeliveryAddress(),
            ),
          ],
        ),
      ),
    );
  }
}
