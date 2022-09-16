import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/controllers/auth_client_controller.dart';
import 'package:vyamshala/src/models/user_model.dart';
import 'package:vyamshala/src/screens/dashboard/dashboard_page.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';
import 'package:vyamshala/src/utils/widgets/custom_button.dart';
import 'package:vyamshala/src/utils/widgets/Custom_form_field.dart';
import 'package:vyamshala/src/utils/widgets/date_picker.dart';
import 'package:vyamshala/src/utils/widgets/dropdown.dart';
import 'package:vyamshala/src/utils/widgets/loading_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final GlobalKey<FormState> _registerForm = GlobalKey<FormState>();
  final validatorEmail = ValidationBuilder().email().build();
  final validatorNumber = ValidationBuilder().phone().build();
  final _email = TextEditingController();
  final _name = TextEditingController();
  final _location = TextEditingController();
  final _description = TextEditingController();
  Usermodel usermodel = Usermodel();
  bool isLoading = false;
  Future<bool?> _validate() async {
    return _registerForm.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registerForm,
      child: isLoading
          ? const LoadingScreen()
          : Scaffold(
              appBar: const AppBarTemplate(text: "Registration Screen"),
              body: Padding(
                padding: EdgeInsets.all(
                    SizeConfig(context).getProportionatePadding()),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: ListView(
                        padding: const EdgeInsets.all(8.0),
                        children: [
                          const Text("Full Name"),
                          InputTextwidget(
                            initialText: 'Name',
                            option: false,
                            keytype: TextInputType.name,
                            height: SizeConfig(context)
                                .getProportionateScreenHeight(90),
                            textEditingController: _name,
                            /*onChanged: (value) {
                              print(value);
                              usermodel.name = value;
                            },*/
                          ),
                          const Text("Location"),
                          InputTextwidget(
                            initialText: 'Lucknow',
                            keytype: TextInputType.text,
                            option: false,
                            height: SizeConfig(context)
                                .getProportionateScreenHeight(90),
                            textEditingController: _location,
                            onChanged: (value) {
                              usermodel.location = value;
                            },
                          ),
                          const Text("Email"),
                          InputTextwidget(
                            initialText: 'test@gmail.com',
                            option: false,
                            height: SizeConfig(context)
                                .getProportionateScreenHeight(90),
                            keytype: TextInputType.emailAddress,
                            textEditingController: _email,
                            /*onChanged: (value) {
                              usermodel.email = value;
                            },*/
                          ),
                          const Text("Gender"),
                          CustomDropdown(
                            onChanged: (String value) {
                              usermodel.gender = value;
                            },
                          ),
                          const Text("Date of Birth"),
                          DatePicker(
                            onChanged: (value) {
                              usermodel.dob = value;
                            },
                          ),
                          const Text("Do you have any problem, Let us Know"),
                          InputTextwidget(
                            initialText: 'Backpain, right legproblem, handpain',
                            option: false,
                            height: SizeConfig(context)
                                .getProportionateScreenHeight(160),
                            keytype: TextInputType.text,
                            textEditingController: _description,
                            onChanged: (value) {
                              usermodel.description = value;
                            },
                          ),
                          DefaultButton(
                            text: "Register",
                            press: () {
                              usermodel.phoneNumber = FirebaseAuth
                                  .instance.currentUser?.phoneNumber;
                              usermodel.isPremium = false;
                              usermodel.description = _description.text;
                              usermodel.name = _name.text;
                              usermodel.email = _email.text;
                              usermodel.location = _location.text;
                              _validate().then((value) async => {
                                    setState(() {
                                      isLoading = true;
                                    }),
                                    if (value == true)
                                      {
                                        print(usermodel.toJson()),
                                        await DioAuthClient()
                                            .signup(usermodel)
                                            .then((value) {
                                          if (value) {
                                            return Get.to(
                                                () => const DashboardPage());
                                          }
                                        }),
                                        setState(() {
                                          isLoading = true;
                                        })
                                      }
                                  });
                            },
                            margins: 5.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
