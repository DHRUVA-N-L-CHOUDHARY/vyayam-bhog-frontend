import 'package:flutter/material.dart';
import 'package:vyamshala/src/config/constants/strings.dart';
import 'package:vyamshala/src/utils/widgets/Custom_sized_box.dart';

// ignore: camel_case_types
class confirmationScreen extends StatelessWidget {
  const confirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                openpic,
              ),
              const SizedBox(
                height: 80,
              ),
              Image.asset(tick),
              const SizedBox(
                height: 40,
              ),
              const Text(" Payment Completed!",
                  style: TextStyle(color: Colors.orange, fontSize: 30)),
              const SizedBox(
                height: 140,
              ),
              const Text(
                "Track your order",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
