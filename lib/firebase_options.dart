// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA61seytyGqvDFbnGcQeI5-HtY7wGJB5FQ',
    appId: '1:483777098971:web:40d5611e4f41fe4e1948fe',
    messagingSenderId: '483777098971',
    projectId: 'vyayam-shala',
    authDomain: 'vyayam-shala.firebaseapp.com',
    storageBucket: 'vyayam-shala.appspot.com',
    measurementId: 'G-3NVH6WFT95',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC51NZ5bg_SnIMInWo3fRG3mZXxEUWa0YM',
    appId: '1:483777098971:android:71ce9d6593f7d3301948fe',
    messagingSenderId: '483777098971',
    projectId: 'vyayam-shala',
    storageBucket: 'vyayam-shala.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQ1boBUvddyIbEnDFoPqSW9778ahRMpu0',
    appId: '1:483777098971:ios:6cb23b3497b32b5e1948fe',
    messagingSenderId: '483777098971',
    projectId: 'vyayam-shala',
    storageBucket: 'vyayam-shala.appspot.com',
    androidClientId: '483777098971-cnrab5d40sciplo1cb0rrn5oftt9c9fr.apps.googleusercontent.com',
    iosClientId: '483777098971-68osskec65tvvgrrqq7qb991qrithr0c.apps.googleusercontent.com',
    iosBundleId: 'com.example.vyamshala',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQ1boBUvddyIbEnDFoPqSW9778ahRMpu0',
    appId: '1:483777098971:ios:6cb23b3497b32b5e1948fe',
    messagingSenderId: '483777098971',
    projectId: 'vyayam-shala',
    storageBucket: 'vyayam-shala.appspot.com',
    androidClientId: '483777098971-cnrab5d40sciplo1cb0rrn5oftt9c9fr.apps.googleusercontent.com',
    iosClientId: '483777098971-68osskec65tvvgrrqq7qb991qrithr0c.apps.googleusercontent.com',
    iosBundleId: 'com.example.vyamshala',
  );
}