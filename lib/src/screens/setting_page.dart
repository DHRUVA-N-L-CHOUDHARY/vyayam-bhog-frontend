import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/strings.dart';
import 'package:vyamshala/src/utils/widgets/Custom_list_tile1.dart';
import 'package:vyamshala/src/utils/widgets/Custom_sized_box.dart';
import 'package:vyamshala/src/utils/widgets/side_menu_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  Future<void> _logoutUser() async {
    GetStorage().remove('authToken');
    GetStorage().remove('tokenId');
    await FirebaseAuth.instance.signOut();
  }

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
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
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
            const CustomSizedBox(inputHeight: 60, inputWidth: double.infinity),
            const Text(
              "Settings",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const CustomSizedBox(inputHeight: 30, inputWidth: double.infinity),
            CustomExpansionListTile(
                titleinput: "Location", downtext: " ", icon: locationicon),
            const CustomSizedBox(inputHeight: 10, inputWidth: double.infinity),
            CustomExpansionListTile(
                titleinput: "Notfication", downtext: " ", icon: notfications),
            const CustomSizedBox(inputHeight: 10, inputWidth: double.infinity),
            CustomExpansionListTile(
                titleinput: "Close Friends", downtext: " ", icon: closefriends),
            const CustomSizedBox(inputHeight: 10, inputWidth: double.infinity),
            CustomExpansionListTile(titleinput: "Sounds", downtext: " ", icon: sounds),
            const CustomSizedBox(inputHeight: 10, inputWidth: double.infinity),
            CustomExpansionListTile(
                titleinput: "Privacy", downtext: " ", icon: privacy),
            const CustomSizedBox(inputHeight: 10, inputWidth: double.infinity),
            CustomListTile(
                titleinput: "Logout", downtext: " ", icon: privacy, fn: _logoutUser,),
          ],
        ),
      ),
    );
  }
}
