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
    apiKey: 'AIzaSyCyRGvKQQqzOfxgVrj6fRWazSJIuKdSQTs',
    appId: '1:866422413963:web:a01c15f94857e9cc43128e',
    messagingSenderId: '866422413963',
    projectId: 'asu-carpool-app',
    authDomain: 'asu-carpool-app.firebaseapp.com',
    storageBucket: 'asu-carpool-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_IuvVU0gElujsstpjF8c6gUr1pB2H4OU',
    appId: '1:866422413963:android:e4c26dc8d162e99743128e',
    messagingSenderId: '866422413963',
    projectId: 'asu-carpool-app',
    storageBucket: 'asu-carpool-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC7ACfRnEZ-5MW3n9YWfdi3Agvg1EQ-MuU',
    appId: '1:866422413963:ios:cbc38fefff05d1a243128e',
    messagingSenderId: '866422413963',
    projectId: 'asu-carpool-app',
    storageBucket: 'asu-carpool-app.appspot.com',
    iosBundleId: 'com.pickme.pickme',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC7ACfRnEZ-5MW3n9YWfdi3Agvg1EQ-MuU',
    appId: '1:866422413963:ios:3a1110500267108543128e',
    messagingSenderId: '866422413963',
    projectId: 'asu-carpool-app',
    storageBucket: 'asu-carpool-app.appspot.com',
    iosBundleId: 'com.pickme.pickme.RunnerTests',
  );
}
