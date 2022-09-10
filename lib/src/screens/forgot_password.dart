import 'package:flutter/material.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';
import '../utils/widgets/custom_button.dart';
import '../utils/widgets/imagewidget.dart';
import '../utils/widgets/Custom_form_field.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTemplate(text: "Forgot Password"),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                const buildCard(),
                const InputTextwidget(
                  initialText: 'Enter your email',
                  iconData: Icons.mail_outline,
                  option: true,
                ),
                DefaultButton(
                    text: "Reset Password", margins: 5.0, press: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
