import 'dart:async';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vyamshala/src/screens/dashboard/dashboard_page.dart';
import 'package:vyamshala/src/utils/widgets/phone_number.dart';

class AuthController extends GetxController {
  bool isResendAgain = true;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  static AuthController instance = Get.find();
  String? tokenId;
  late Rx<User?> firebaseUser;
  bool isAuthenticated = false;
  int? _resendToken;
  bool isLoading = false;
  late Timer timer;
  int start = 60;

  @override
  void onInit() {
    resend(null);
    storeToken();
    super.onInit();
    firebaseUser = Rx<User?>(firebaseAuth.currentUser);
    firebaseUser.bindStream(firebaseAuth.authStateChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    isLoading = false;
    if (user == null) {
      Get.offAll(() => const phoneNumber());
    } else {
      Get.offAll(() => DashboardPage());
    }
  }

  void login(String phoneNo) async {
    isLoading = true;
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (PhoneAuthCredential credential) async {
        final currentUser = firebaseAuth.currentUser;
        if (currentUser != null) {
          isLoading = false;
          update();
          GetStorage().write('verId', credential.verificationId!);
          print(credential.verificationId);
          tokenId = await currentUser.getIdToken(true);
          print(tokenId);
          GetStorage().write('tokenId', tokenId);
          Get.off( DashboardPage());
        }
      },
      verificationFailed: (FirebaseAuthException e) {
        isLoading = false;
        update();
        Get.offAll(() => const phoneNumber());
        Get.snackbar("sms code info", "otp code hasn't been sent!");
        print(e);
      },
      codeSent: (String verificationId, int? resendToken) {
        isLoading = false;
        update();
        _resendToken = resendToken;
        GetStorage().write('verId', verificationId);
        print("verId: ${GetStorage().read('verId')}");
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        isLoading = false;
        update();
        GetStorage().write('verId', verificationId);
        print("verId: ${GetStorage().read('verId')}");
      },
    );
  }

  otpVerify(String otp) async {
    isLoading = true;
    update();
    try {
      UserCredential userCredential = await firebaseAuth.signInWithCredential(
          PhoneAuthProvider.credential(verificationId: GetStorage().read('verId'), smsCode: otp));
      print("verId: ${GetStorage().read('verId')}");
      if (userCredential.user != null) {
        isLoading = false;
        update();
        tokenId = await firebaseAuth.currentUser?.getIdToken(true);
        print(tokenId);
        GetStorage().write('tokenId', tokenId);
        Get.offAll( DashboardPage());
      }
    } on Exception catch (e) {
      isLoading = false;
      update();
      Get.snackbar("SMS code info", "otp code is not correct !!");
      print(e);
    }
  }

  void resend(String? phoneNo) async {
    //Get.snackbar("SMS Code Info", "OTP has been sent again!");
    isResendAgain = true;
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(oneSec, (timer) {
      if (start == 0) {
        start = 60;
        update();
        isResendAgain = false;
        timer.cancel();
      } else {
        start--;
        update();
      }
    });
    if(phoneNo != null) {
      isLoading = true;
      update();
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNo,
        timeout: const Duration(seconds: 60),
        forceResendingToken: _resendToken,
        verificationCompleted: (PhoneAuthCredential credential) async {
          final currentUser = firebaseAuth.currentUser;
          if (currentUser != null) {
            isLoading = false;
            update();
            GetStorage().write('verId', credential.verificationId!);
            print(credential.verificationId);
            tokenId = await currentUser.getIdToken(true);
            print(tokenId);
            GetStorage().write('tokenId', tokenId);
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          isLoading = false;
          Get.snackbar("sms code info", "otp code hasn't been sent!!");
          print(e.message);
        },
        codeSent: (String verificationId, int? resendToken) {
          isLoading = false;
          update();
          _resendToken = resendToken;
          GetStorage().write('verId', verificationId);
          print("verId: ${GetStorage().read('verId')}");
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          GetStorage().write('verId', verificationId);
          print("verId: ${GetStorage().read('verId')}");
        },
      );
    }
  }

  Future<void> storeToken() async {
    tokenId = await firebaseAuth.currentUser?.getIdToken(true);
    GetStorage().write('tokenId', tokenId);
    print(tokenId);
  }
}
