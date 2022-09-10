import 'package:flutter/material.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/config/constants/strings.dart';
import 'package:vyamshala/src/utils/widgets/Custom_form_field.dart';
import 'package:vyamshala/src/utils/widgets/Custom_sized_box.dart';
import 'package:vyamshala/src/utils/widgets/custom_button.dart';
import 'package:vyamshala/src/utils/widgets/side_menu_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         endDrawer: const Sidemenubar(),
      appBar: AppBar(
        // ignore: unnecessary_new
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
          child: Padding(
            padding:
                EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CustomSizedBox(
                    inputHeight: 50, inputWidth: double.infinity),
                const Align(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const CustomSizedBox(
                    inputHeight: 10, inputWidth: double.infinity),
                const CustomSizedBox(
                    inputHeight: 70, inputWidth: double.infinity),
                const Align(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Namemm",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w100),
                  ),
                ),
                const CustomSizedBox(
                    inputHeight: 10, inputWidth: double.infinity),
                const Align(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Full Name",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                const CustomSizedBox(
                    inputHeight: 10, inputWidth: double.infinity),
                const InputTextwidget(
                    initialText: "Namemmm", height: 79, option: false),
                const CustomSizedBox(
                    inputHeight: 10, inputWidth: double.infinity),
                const Align(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Date of Birth",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                const CustomSizedBox(
                    inputHeight: 10, inputWidth: double.infinity),
                const InputTextwidget(
                    initialText: "Jul, 2001", height: 79, option: false),
                const CustomSizedBox(
                    inputHeight: 70, inputWidth: double.infinity),
                const DefaultButton(
                  text: "Save",
                  margins: 5.0,
                  press: null,
                )
              ],
            ),
          ),
        ));
  }
}
