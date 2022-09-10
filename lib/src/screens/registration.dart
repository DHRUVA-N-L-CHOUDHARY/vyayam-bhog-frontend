import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';
import 'package:vyamshala/src/routes/app_routes.dart';
import 'package:vyamshala/src/screens/dashboard/dashboard_page.dart';
import 'package:vyamshala/src/screens/meals_main_page.dart';
import 'package:vyamshala/src/screens/menu_page.dart';
import 'package:vyamshala/src/utils/widgets/appbar.dart';
import 'package:vyamshala/src/utils/widgets/custom_button.dart';
import 'package:vyamshala/src/utils/widgets/Custom_form_field.dart';
import 'package:vyamshala/src/utils/widgets/date_picker.dart';
import 'package:vyamshala/src/utils/widgets/dropdown.dart';
import 'package:vyamshala/src/utils/widgets/side_menu_bar.dart';


class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTemplate(text: "Registration Screen"),
      body: Padding(
        padding:  EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                children: [
                  const Text("Full Name"),
                  InputTextwidget(initialText: 'Name', option: false, height: SizeConfig(context).getProportionateScreenHeight(90),),
                  const Text("Location"),
                   InputTextwidget(initialText: 'Lucknow', option: false,height: SizeConfig(context).getProportionateScreenHeight(90)),
                  const Text("Email"),
                   InputTextwidget(initialText: 'test@gmail.com',option: false,height: SizeConfig(context).getProportionateScreenHeight(90)),
                  const Text("Gender"),
                  const CustomDropdown(),
                  const Text("Date of Birth"),
                  const DatePicker(),
                  const Text("Do you have any problem, Let us Know"),
                   InputTextwidget(initialText: 'Backpain, right legproblem, handpain',option: false,height: SizeConfig(context).getProportionateScreenHeight(160)),
                   DefaultButton(text: "Register", press: () {
                            Get.to(DashboardPage()); }
                    , margins: 5.0,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}