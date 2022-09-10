import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vyamshala/src/routes/app_routes.dart';
import 'package:vyamshala/src/screens/dashboard/dashboard_page.dart';
import 'package:vyamshala/src/screens/forgot_password.dart';
import 'package:vyamshala/src/screens/registration.dart';
import 'package:vyamshala/src/screens/login_screen.dart';
import 'package:vyamshala/src/screens/subscription_page.dart';
import 'package:vyamshala/src/utils/widgets/phone_number.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.OTP,
      page: () => const phoneNumber(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const Loginscreen(),
    ),
    GetPage(
      name: AppRoutes.FORGOT,
      page: () => const ForgotScreen(),
    ),
    GetPage(
      name: AppRoutes.REGISTER,
      page: () => const RegistrationScreen(),
    ),
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
    ),
    GetPage(
      name: AppRoutes.SUBSCRIPTION,
      page: () => const SubscriptionPage(),
    ),
  ];
}
