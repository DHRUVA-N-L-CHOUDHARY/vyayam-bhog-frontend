// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/config/constants/strings.dart';
import 'package:vyamshala/src/utils/widgets/Custom_sized_box.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';
import 'package:vyamshala/src/utils/widgets/custom_button.dart';
import 'package:vyamshala/src/utils/widgets/side_menu_bar.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       endDrawer: const Sidemenubar(),
      appBar: AppBar(
        leading: new IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(null),
            padding: const EdgeInsets.all(0.0),
          ),
          title: Image.asset(
            openpic,
            height: 70,
            width: 70,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        actions:<Widget> [
           Builder(
             builder: (context) {
               return IconButton(
                  icon: Icon(Icons.menu),
                  color: kPrimaryColor,
                  onPressed: (() {
                    Scaffold.of(context).openEndDrawer();
                  }),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
             },
           ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CustomSizedBox(
              inputHeight: 30,
              inputWidth: double.infinity,
            ),
            SizedBox(
              height: SizeConfig(context).getProportionateScreenHeight(80),
              width: SizeConfig(context).getProportionateScreenWidth(300),
              child: DecoratedBox(
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig(context).getProportionatePadding(),
                        left: SizeConfig(context).getProportionatePadding()),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              SizeConfig(context).getProportionateroundess() *
                                  0.75,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          height: 20,
                          width: 40,
                          child: const Text("  PRO"),
                        ),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Upgrade to Premium",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("This Subscription is auto-renewable")),
                  ),
                ]),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                        SizeConfig(context).getProportionateroundess() * 1.25),
                  ),
                  color: Colors.grey,
                ),
              ),
            ),
            const CustomSizedBox(inputHeight: 50, inputWidth: double.infinity),
            const Text(
              "Unlock Unlimited Access",
              style: TextStyle(fontSize: 20),
            ),
            const CustomSizedBox(inputHeight: 20, inputWidth: double.infinity),
            const Text(
              "Activate this exercise so you can",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const CustomSizedBox(inputHeight: 10, inputWidth: double.infinity),
            const Text(
              "practice with your friends",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const CustomSizedBox(inputHeight: 20, inputWidth: double.infinity),
            // ignore: sized_box_for_whitespace
            Container(
              height: SizeConfig(context).getProportionateScreenHeight(150),
              width: SizeConfig(context).getProportionateScreenWidth(250),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          SizeConfig(context).getProportionateroundess() * 2.5,
                        ),
                        topRight: Radius.circular(
                          SizeConfig(context).getProportionateroundess() * 2.5,
                        ),
                      ),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    height:
                        SizeConfig(context).getProportionateScreenHeight(110),
                    width: SizeConfig(context).getProportionateScreenWidth(250),
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Basic\n\n',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Rs.119.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                            TextSpan(
                              text: '/Year',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: SizeConfig(context)
                            .getProportionateScreenHeight(40),
                        width: SizeConfig(context)
                            .getProportionateScreenWidth(250),
                        decoration: BoxDecoration(
                          // color: kPrimaryColor,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              SizeConfig(context).getProportionateroundess() *
                                  2.5,
                            ),
                            bottomRight: Radius.circular(
                              SizeConfig(context).getProportionateroundess() *
                                  2.5,
                            ),
                          ),
                        ),
                        child: const Align(
                            alignment: Alignment.center,
                            child:
                                const Text('Rs.9.99 /Month billed annually')),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const CustomSizedBox(inputHeight: 20, inputWidth: double.infinity),
            // ignore: sized_box_for_whitespace
            Container(
              height: SizeConfig(context).getProportionateScreenHeight(150),
              width: SizeConfig(context).getProportionateScreenWidth(250),
              child: Column(
                children: [
                  Container(
                    height:
                        SizeConfig(context).getProportionateScreenHeight(110),
                    width: SizeConfig(context).getProportionateScreenWidth(250),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          SizeConfig(context).getProportionateroundess() * 2.5,
                        ),
                        topRight: Radius.circular(
                          SizeConfig(context).getProportionateroundess() * 2.5,
                        ),
                      ),
                      border: Border.all(
                        color: kPrimaryColor,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Pro\n\n',
                          style: TextStyle(
                            color: kPrimaryColor,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Rs.239.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '/Year',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height:
                        SizeConfig(context).getProportionateScreenHeight(40),
                    width: SizeConfig(context).getProportionateScreenWidth(250),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      border: Border.all(
                        color: kPrimaryColor,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          SizeConfig(context).getProportionateroundess() * 2.5,
                        ),
                        bottomRight: Radius.circular(
                          SizeConfig(context).getProportionateroundess() * 2.5,
                        ),
                      ),
                    ),
                    child: const Align(
                        alignment: Alignment.center,
                        child: const Text('Rs.19.99 /Month billed annually')),
                  ),
                ],
              ),
            ),
            const CustomSizedBox(inputHeight: 40, inputWidth: double.infinity),
            const DefaultButton(
              text: "Payment",
              press: null,
              margins: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
