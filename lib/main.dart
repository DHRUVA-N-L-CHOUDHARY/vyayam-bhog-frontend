import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyamshala/firebase_options.dart';
import 'package:vyamshala/src/config/themes/app_themes.dart';
import 'package:vyamshala/src/controllers/auth_controller.dart';
import 'package:vyamshala/src/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _authController = Get.put(AuthController());
  @override
  void initState() {
    _authController.storeToken();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "VYAMSHALA",
      //initialRoute: AppRoutes.OTP,
      home: const Scaffold(
        body: CircularProgressIndicator(),
      ),
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      // darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
