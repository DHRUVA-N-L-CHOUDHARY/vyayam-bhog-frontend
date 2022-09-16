import 'package:flutter/material.dart';
import 'package:vyamshala/src/controllers/auth_client_controller.dart';
import 'package:vyamshala/src/screens/dashboard/dashboard_page.dart';
import 'package:vyamshala/src/screens/registration.dart';
import 'package:vyamshala/src/utils/widgets/loading_screen.dart';

class NavigationHome extends StatefulWidget {
  const NavigationHome({Key? key}) : super(key: key);

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  DioAuthClient dioClient = DioAuthClient();
  Future<bool> _login() async => await dioClient.login().then((value) {
    return value;
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: _login(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            bool isLogin = snapshot.data ?? false;
            return isLogin
                ? const DashboardPage()
                : const RegistrationScreen();
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: LoadingScreen(),
            );
          } else if (snapshot.hasError) {
            final error = snapshot.error;
            return Center(
              child: Text(
                "Error: $error",
              ),
            );
          } else {
            return const Scaffold(
              body: LoadingScreen(),
            );
          }
        });
    // return isLogin ? const BottomNavbarNavigation() : const CreateProfile();
  }
}