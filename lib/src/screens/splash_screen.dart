import 'dart:async';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/config/constants/strings.dart';
import 'package:vyamshala/src/utils/widgets/imagewidget.dart';

class Openscreen extends StatefulWidget {
  const Openscreen({Key? key}) : super(key: key);

  @override
  State<Openscreen> createState() => _OpenscreenState();
}

class _OpenscreenState extends State<Openscreen> {
  @override
  void initState() {
    super.initState();
    // Timer(const Duration(seconds: 5), () {
    //   Get.to(() => const MenuPage() );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const buildCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  retcangluar,
                  height: SizeConfig(context).getProportionateScreenHeight(80),
                ),
                const Text("A STEP FORWARD \nTO HEALTHIER \nWORLD",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic)),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
