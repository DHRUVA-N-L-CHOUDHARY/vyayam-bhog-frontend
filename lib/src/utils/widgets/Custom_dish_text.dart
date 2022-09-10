import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Customdishtext extends StatelessWidget {
  const Customdishtext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child:  Text(
              "Dish Name",
              style: TextStyle(fontSize: 30),
            ),
          ),
           const Align(
            alignment: Alignment.topLeft,
             child: Text(
              "Strarting Price",
              style: TextStyle(fontSize: 17),
                     ),
           ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Strarting Price Strarting\n Price Strarting Price",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Time 10 mins",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Rs:200",
              style: TextStyle(fontSize: 25),
            ),
          )
        ]);
  }
}
