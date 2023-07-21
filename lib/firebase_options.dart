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
    apiKey: 'AIzaSyB0_nFjCAeVqF4lVGw9AYypj9l6W1DQ6s4',
    appId: '1:522712915373:web:2acd50872ff4ef25585524',
    messagingSenderId: '522712915373',
    projectId: 'lepton-sapor',
    authDomain: 'lepton-sapor.firebaseapp.com',
    storageBucket: 'lepton-sapor.appspot.com',
    measurementId: 'G-JB79GY4PGM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkJSf20Rbz3dtqxGzA2H7LuMjfiHcfvuc',
    appId: '1:522712915373:android:ff50c1947ba6284b585524',
    messagingSenderId: '522712915373',
    projectId: 'lepton-sapor',
    storageBucket: 'lepton-sapor.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFUzTxHJ1bJhdOB2sZ5Zdu-XRiuPZHTGA',
    appId: '1:522712915373:ios:8e12ff652d6c7994585524',
    messagingSenderId: '522712915373',
    projectId: 'lepton-sapor',
    storageBucket: 'lepton-sapor.appspot.com',
    androidClientId: '522712915373-m7fo6kaluvlu50o9qanpunqi4ofq91ah.apps.googleusercontent.com',
    iosClientId: '522712915373-4eel21qllh36lv8bqgd823vnol32s6n5.apps.googleusercontent.com',
    iosBundleId: 'com.example.leptonPapeo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFUzTxHJ1bJhdOB2sZ5Zdu-XRiuPZHTGA',
    appId: '1:522712915373:ios:8e12ff652d6c7994585524',
    messagingSenderId: '522712915373',
    projectId: 'lepton-sapor',
    storageBucket: 'lepton-sapor.appspot.com',
    androidClientId: '522712915373-m7fo6kaluvlu50o9qanpunqi4ofq91ah.apps.googleusercontent.com',
    iosClientId: '522712915373-4eel21qllh36lv8bqgd823vnol32s6n5.apps.googleusercontent.com',
    iosBundleId: 'com.example.leptonPapeo',
  );
}
