import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/strings.dart';
import 'package:vyamshala/src/screens/cart_page.dart';
import 'package:vyamshala/src/screens/profile_page.dart';
import 'package:vyamshala/src/utils/widgets/side_menu_bar.dart';

class AppBarTemplate extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String text;
  final int option;
  final IconData requiredicon;
  final int optionbutton;
  final Function? onPressed;
  const AppBarTemplate(
      {Key? key,
      this.text = "VYAMSHALA",
      this.height = kToolbarHeight,
      this.option = 1,
      this.requiredicon = Icons.abc,
      this.optionbutton = 1, 
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (option == 1) {
      return AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(null),
        // ),
        backgroundColor: Colors.white,
        title: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 27),
        ),
        centerTitle: true,
      );
    } else if (option == 2) {
      return AppBar(
        // leading: new IconButton(
        //   icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(null),
        // ),
        backgroundColor: Colors.white,
        title: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 27),
        ),
        centerTitle: true,
      );
    } else {
      if (optionbutton == 1) {
        return AppBar(
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          //   onPressed: () => Navigator.of(context).pop(null),
          //   padding: const EdgeInsets.all(0.0),
          // ),
          title: Image.asset(
            openpic,
            height: 70,
            width: 70,
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(requiredicon),
              color: kPrimaryColor,
              onPressed: (() {
                Get.to(() => const OrderList());
              }),
            ),
          ],
          centerTitle: true,
        );
      } else {
        return AppBar(
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          //   onPressed: () => Navigator.of(context).pop(null),
          //   padding: const EdgeInsets.all(0.0),
          // ),
          title: Image.asset(
            openpic,
            height: 70,
            width: 70,
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(requiredicon),
              color: kPrimaryColor,
              onPressed: (() {
              }),
            ),
          ],
          centerTitle: true,
        );
      }
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
