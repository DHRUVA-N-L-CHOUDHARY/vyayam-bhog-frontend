// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class DropDown extends StatefulWidget {
//   const DropDown({Key? key}) : super(key: key);

//   @override
//   State<DropDown> createState() => _DropDownState();
// }

// ignore_for_file: sized_box_for_whitespace

// class _DropDownState extends State<DropDown> {
//   String dropdownValue = 'Lucknow';
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_downward),
//       elevation: 16,
//       style: const TextStyle(color: Colors.deepPurple),
//       underline: Container(
//         height: 2,
//         color: Colors.deepPurpleAccent,
//       ),
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownValue = newValue!;
//         });
//       },
//       items: <String>['One', 'Two', 'Free', 'Four']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
// class DropDown extends StatefulWidget {
//   const DropDown({Key? key}) : super(key: key);

//   @override
//   State<DropDown> createState() => _DropDownState();
// }

//   class _DropDownState extends State<DropDown> {
// var items = [
//   'Item1',
//   'Item2',
//   'Item3',
//   'Item4',
//   'Item5',
//   'Item6',
//   'Item7',
//   'Item8',
// ];
//   String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             isExpanded: true,
//             hint: Row(
//               children: const [
//                 Icon(
//                   Icons.list,
//                   size: 16,
//                   color: kPrimaryColor,
//                 ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 Expanded(
//                   child: Text(
//                     'Select Item',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.yellow,
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               ],
//             ),
//             items: items
//                 .map((item) => DropdownMenuItem<String>(
//                       value: item,
//                       child: Text(
//                         item,
//                         style: const TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ))
//                 .toList(),
//             value: selectedValue,
//             onChanged: (value) {
//               setState(() {
//                 selectedValue = value as String;
//               });
//             },
//             icon: const Icon(
//               Icons.arrow_forward_ios_outlined,
//             ),
//             iconSize: 14,
//             iconEnabledColor: Colors.yellow,
//             iconDisabledColor: Colors.grey,
//             buttonHeight: 50,
//             buttonWidth: 160,
//             buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//             buttonDecoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               border: Border.all(
//                 color: Colors.black26,
//               ),
//               color: Colors.redAccent,
//             ),
//             buttonElevation: 2,
//             itemHeight: 40,
//             itemPadding: const EdgeInsets.only(left: 14, right: 14),
//             dropdownMaxHeight: 200,
//             dropdownWidth: 200,
//             dropdownPadding: null,
//             dropdownDecoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14),
//               color: Colors.redAccent,
//             ),
//             dropdownElevation: 8,
//             scrollbarRadius: const Radius.circular(40),
//             scrollbarThickness: 6,
//             scrollbarAlwaysShow: true,
//             offset: const Offset(-20, 0),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomDropdown extends StatefulWidget {
//   const CustomDropdown({Key? key}) : super(key: key);

//   @override
//   State<CustomDropdown> createState() => _CustomDropdownState();
// }

// class _CustomDropdownState extends State<CustomDropdown> {
//   String dropdownvalue = 'Item 1';
//   var items = [
//     'Item1',
//     'Item2',
//     'Item3',
//     'Item4',
//     'Item5',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton(
//       items: items.map((String items) {
//         return DropdownMenuItem(
//           value: items,
//           child: Text(items),
//         );
//       }).toList(),
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownvalue = newValue!;
//         });
//       },
//       value: dropdownvalue,
//       icon: const Icon(Icons.keyboard_arrow_down),
//     );
//   }
// }
class CustomDropdown extends StatefulWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  // Initial Selected Value
  String dropdownvalue = 'Male';

  // List of items in our dropdown menu
  List<String> items = [
    'Male',
    'Female',
    'Prefer Not to Say',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig(context).getProportionateScreenHeight(90),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputDecorator(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 0,
                    borderRadius: BorderRadius.all(Radius.circular(
                        SizeConfig(context).getProportionateroundess())))),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                // Initial Value
                // Down Arrow Icon
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                isExpanded: true,
                isDense: true,
                // Array list of items
                items: items.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue ?? "Male";
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
