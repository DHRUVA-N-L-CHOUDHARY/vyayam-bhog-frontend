// ignore_for_file: unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/screens/confirmation_screen.dart';
import 'package:vyamshala/src/utils/widgets/Custom_sized_box.dart';
import 'package:vyamshala/src/utils/widgets/custom_button.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Text(
              "Name",
              style: const TextStyle(fontSize: 10),
            ),
            const CustomSizedBox(inputHeight: 10, inputWidth: 290),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                "Edit",
                style: const TextStyle(color: kPrimaryColor),
              ),
            ),
          ],
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Rohan",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        const CustomSizedBox(inputHeight: 20, inputWidth: 300),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Address",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "IIIT LUCKNOW",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        const CustomSizedBox(inputHeight: 20, inputWidth: 300),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Phone",
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "658-8888-9696",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        const CustomSizedBox(inputHeight: 50, inputWidth: 300),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Total (2items) ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const CustomSizedBox(inputHeight: 10, inputWidth: 160),
            const Text(
              "Rs:250",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const CustomSizedBox(inputHeight: 15, inputWidth: double.infinity),
        // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
        DefaultButton(text: "Pay Rs:250",press: (){ Get.to(()=>confirmationScreen());},),
      ],
    );
  }
}
