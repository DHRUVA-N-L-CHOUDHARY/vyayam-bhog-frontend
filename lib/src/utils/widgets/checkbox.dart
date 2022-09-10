// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:checkbox_formfield/checkbox_formfield.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:vyamshala/src/config/constants/colors.dart';
// import 'package:vyamshala/src/routes/app_routes.dart';
// import 'package:vyamshala/src/screens/forgot_password.dart';

// class checkbox extends StatefulWidget {
//   const checkbox({Key? key}) : super(key: key);

//   @override
//   State<checkbox> createState() => _checkboxState();
// }

// class _checkboxState extends State<checkbox> {
//   bool valuefirst = false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(3.0),
//       child: Column(
//         children: <Widget>[
//           CheckboxListTileFormField(
//             activeColor: kPrimaryColor,
//             title: Text('Remeber Me'),
//             onSaved: (bool? value) {
//               print(value);
//             },
//             validator: (bool? value) {
//               if (value!) {
//                 return null;
//               } else {
//                 return ;
//               }
//             },
//             onChanged: (value) {
//               if (value) {
//                 print("ListTile Checked :)");
//               } else {
//                 print("ListTile Not Checked :(");
//               }
//             },
//             autovalidateMode: AutovalidateMode.always,
//             contentPadding: EdgeInsets.all(1.0),
//             // controlAffinity: ListTileControlAffinity.leading
//           ),
//           TextButton(onPressed: () {Get.to(() => const ForgotScreen());}, child: Text('Forgot Password?')),

//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/screens/forgot_password.dart';

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return kPrimaryColor;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const Text(
              "Remember me",
              style: TextStyle(color: Colors.grey, fontSize: 11.0),
            )
          ],
        ),
        TextButton(
            onPressed: () {
              Get.to(() => const ForgotScreen());
            },
            // ignore: prefer_const_constructors
            child: const Text(
              'Forgot Password?',
              style: TextStyle(color: kPrimaryColor, fontSize: 15.0),
            )),
      ],
    );
  }
}
