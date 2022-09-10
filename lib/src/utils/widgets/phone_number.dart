// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/controllers/auth_controller.dart';
import 'package:vyamshala/src/screens/otp_screen.dart';
import 'package:vyamshala/src/utils/widgets/Custom_form_field.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';
import 'package:vyamshala/src/utils/widgets/custom_button.dart';
import 'package:vyamshala/src/utils/widgets/imagewidget.dart';

class phoneNumber extends StatefulWidget {
  const phoneNumber({Key? key}) : super(key: key);

  @override
  State<phoneNumber> createState() => _phoneNumberState();
}

class _phoneNumberState extends State<phoneNumber> {
  final GlobalKey<FormState> _loginForm = GlobalKey<FormState>();
  final AuthController authController = Get.find();
  final _phone = TextEditingController();
  final _countryCode = "IN";
  final _countryPhoneCode = "+91";
  final validatorNumber =
      ValidationBuilder(requiredMessage: "Please enter your phone number.")
          .phone()
          .build();
  String pin = "";

  void fn(String pin) {
    pin = this.pin;
    print(pin);
  }

  Future<bool?> _validate() async {
    return _loginForm.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTemplate(
        text: "Log In",
      ),
      body: GetBuilder(
        init: authController,
        builder: (_) {
          return Form(
            key: _loginForm,
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: ListView(
                    padding: const EdgeInsets.all(8.0),
                    children: [
                      const buildCard(),
                      InputTextwidget(
                        initialText: 'Enter your Phone number',
                        iconData: Icons.phone_android_rounded,
                        option: true,
                        keytype: TextInputType.phone,
                        textEditingController: _phone,
                      ),
                      DefaultButton(
                        text: "Send OTP",
                        margins: 5.0,
                        press: () async {
                          await _validate().then(
                            (value) {
                              if (value == true) {
                                String number = "$_countryPhoneCode ${_phone.text}";
                                print(number);
                                authController
                                    .login(number);
                                //authController.login(_phone.text);
                                Get.to(() => OTPScreen(number: number,));
                              }
                            },
                          );
                          //Get.to(() => OTPScreen(fn: fn,));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
