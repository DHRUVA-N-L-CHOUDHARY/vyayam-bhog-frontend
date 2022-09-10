import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';

class CustomContainer extends StatelessWidget {
  final double inputHeight;
  final double inputWidth;
  final String displaytext;
  final double option;
  const CustomContainer(
      {Key? key,
      required this.inputHeight,
      required this.inputWidth,
      this.displaytext = "abc",
      this.option = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (option == 1) {
      return Container(
        height: SizeConfig(context).getProportionateScreenHeight(inputHeight),
        width: SizeConfig(context).getProportionateScreenWidth(inputWidth),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig(context).getProportionateroundess())),
          color: Colors.grey,
        ),
        // ignore: unnecessary_new
        child: new Stack(
          children: <Widget>[
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(displaytext),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0, bottom: 10.0),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      // ignore: prefer_const_constructors
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),
                      ),
                      child: Text("Join"),
                      onPressed: (() {}),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (option == 2) {
      return Container(
        height: SizeConfig(context).getProportionateScreenHeight(inputHeight),
        width: SizeConfig(context).getProportionateScreenWidth(inputWidth),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig(context).getProportionateroundess())),
          color: Colors.grey,
        ),
      );
    } else if (option == 3) {
      return Container(
        height: SizeConfig(context).getProportionateScreenHeight(inputHeight),
        width: SizeConfig(context).getProportionateScreenWidth(inputWidth),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig(context).getProportionateroundess())),
          color: Colors.grey,
        ),
        // ignore: unnecessary_new
        child: new Stack(
          children: <Widget>[
            Positioned(
              child: Align(
                alignment: FractionalOffset.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(displaytext),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        height: SizeConfig(context).getProportionateScreenHeight(inputHeight),
        width: SizeConfig(context).getProportionateScreenWidth(inputWidth),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig(context).getProportionateroundess())),
          color: Colors.grey,
        ),
        // ignore: unnecessary_new
        child: new Stack(
          children: <Widget>[
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                          text: "Dish Name\n",
                          style: TextStyle(fontSize: 20),
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <TextSpan>[
                            const TextSpan(
                                text: "Starting Price",
                                style: TextStyle(fontSize: 10))
                          ]),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
