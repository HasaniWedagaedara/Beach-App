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
    apiKey: 'AIzaSyAzYoYWN76xtoooYjlo31fPfTOANJQItdw',
    appId: '1:46411105991:web:7a2fcd027131b496e5a0e2',
    messagingSenderId: '46411105991',
    projectId: 'myapp-e7c0a',
    authDomain: 'myapp-e7c0a.firebaseapp.com',
    storageBucket: 'myapp-e7c0a.appspot.com',
    measurementId: 'G-ZGTE2NZK0M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDoICm7hTxd-bZMYhugOzjVzByRoQS8Pjs',
    appId: '1:46411105991:android:4b10c061f3e4f454e5a0e2',
    messagingSenderId: '46411105991',
    projectId: 'myapp-e7c0a',
    storageBucket: 'myapp-e7c0a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBNrmWD0Fwb_jb16Lj7mGVQiDS0RYhAGI',
    appId: '1:46411105991:ios:3ec57e674b14c611e5a0e2',
    messagingSenderId: '46411105991',
    projectId: 'myapp-e7c0a',
    storageBucket: 'myapp-e7c0a.appspot.com',
    iosBundleId: 'com.example.beachapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDBNrmWD0Fwb_jb16Lj7mGVQiDS0RYhAGI',
    appId: '1:46411105991:ios:ac489e3990299089e5a0e2',
    messagingSenderId: '46411105991',
    projectId: 'myapp-e7c0a',
    storageBucket: 'myapp-e7c0a.appspot.com',
    iosBundleId: 'com.example.beachapp.RunnerTests',
  );
}