import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/screens/registration.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';
import 'package:vyamshala/src/utils/widgets/checkbox.dart';
import 'package:vyamshala/src/utils/widgets/custom_button.dart';
import 'package:vyamshala/src/utils/widgets/imagewidget.dart';
import 'package:vyamshala/src/utils/widgets/Custom_form_field.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTemplate(
        text: "Log In",
        option: 2,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                buildCard(),
                InputTextwidget(
                  initialText: 'Username',
                  iconData: Icons.person_outline_rounded,
                  option: true,
                ),
                InputTextwidget(
                  initialText: 'Password',
                  iconData: Icons.lock_open_rounded,
                  option: true,
                ),
                checkbox(),
                DefaultButton(text: "Log in", margins: 5.0, press: () {}),
                Center(
                    child: RichText(
                  // ignore: prefer_const_constructors
                  text: TextSpan(
                    text: 'Don\'t have a account?',
                    style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                            fontSize: 17.0,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              Get.to(() => const RegistrationScreen());
                            }),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
