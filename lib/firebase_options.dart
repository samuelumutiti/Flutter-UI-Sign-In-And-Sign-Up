// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDeyS0Kl1wGdSeHMEk3hmC6KA2APAj9tNI',
    appId: '1:938932969483:web:3ba904149b55f2d0ade70e',
    messagingSenderId: '938932969483',
    projectId: 'flutterapp02-ebbec',
    authDomain: 'flutterapp02-ebbec.firebaseapp.com',
    storageBucket: 'flutterapp02-ebbec.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATLcpV5shXJECrT1CfSjGS1cJ5hvzXtjg',
    appId: '1:938932969483:android:8a1eaa57d47c59c7ade70e',
    messagingSenderId: '938932969483',
    projectId: 'flutterapp02-ebbec',
    storageBucket: 'flutterapp02-ebbec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-ccb8bILqoQiqZ6WWKI6_WU483-PD9-s',
    appId: '1:938932969483:ios:ec65db22def3ed0fade70e',
    messagingSenderId: '938932969483',
    projectId: 'flutterapp02-ebbec',
    storageBucket: 'flutterapp02-ebbec.appspot.com',
    iosBundleId: 'com.example.app02',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-ccb8bILqoQiqZ6WWKI6_WU483-PD9-s',
    appId: '1:938932969483:ios:ec65db22def3ed0fade70e',
    messagingSenderId: '938932969483',
    projectId: 'flutterapp02-ebbec',
    storageBucket: 'flutterapp02-ebbec.appspot.com',
    iosBundleId: 'com.example.app02',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDeyS0Kl1wGdSeHMEk3hmC6KA2APAj9tNI',
    appId: '1:938932969483:web:6851d0c999f3525bade70e',
    messagingSenderId: '938932969483',
    projectId: 'flutterapp02-ebbec',
    authDomain: 'flutterapp02-ebbec.firebaseapp.com',
    storageBucket: 'flutterapp02-ebbec.appspot.com',
  );
}
