// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:firebase_auth/firebase_auth.dart';
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
    apiKey: 'AIzaSyBmEVzlBNM9qlPhUACJ-74djL-qO4UxrHg',
    appId: '1:791828692346:web:f7dafa52a6eb0b3d5eaac3',
    messagingSenderId: '791828692346',
    projectId: 'travelapp-6e1fc',
    authDomain: 'travelapp-6e1fc.firebaseapp.com',
    storageBucket: 'travelapp-6e1fc.appspot.com',
    measurementId: 'G-WCDGV68Z27',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEx3C-GV1PKiUIfia68ktNn43LC4nuqK8',
    appId: '1:791828692346:android:48fbafa5cdbb77355eaac3',
    messagingSenderId: '791828692346',
    projectId: 'travelapp-6e1fc',
    storageBucket: 'travelapp-6e1fc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTRLR7V7Ud4-BF8P9xgrB5LIEtyzR7aeE',
    appId: '1:791828692346:ios:68dfce676c442eb15eaac3',
    messagingSenderId: '791828692346',
    projectId: 'travelapp-6e1fc',
    storageBucket: 'travelapp-6e1fc.appspot.com',
    iosBundleId: 'com.example.mobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTRLR7V7Ud4-BF8P9xgrB5LIEtyzR7aeE',
    appId: '1:791828692346:ios:35faa293238403055eaac3',
    messagingSenderId: '791828692346',
    projectId: 'travelapp-6e1fc',
    storageBucket: 'travelapp-6e1fc.appspot.com',
    iosBundleId: 'com.example.mobile.RunnerTests',
  );
}
