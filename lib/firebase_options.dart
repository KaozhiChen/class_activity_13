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
    apiKey: 'AIzaSyCU93WlMKg_WwDV8Nwh0jnsS3C0jKg7I9o',
    appId: '1:1012203690874:web:e52ad69c04d2e7570654c3',
    messagingSenderId: '1012203690874',
    projectId: 'class-activity-13-b769c',
    authDomain: 'class-activity-13-b769c.firebaseapp.com',
    storageBucket: 'class-activity-13-b769c.firebasestorage.app',
    measurementId: 'G-0TYP9TCPJG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsQK9iN75qcmnXwKm_iTthjJYcntoXbDk',
    appId: '1:1012203690874:android:b9e26635f71bed450654c3',
    messagingSenderId: '1012203690874',
    projectId: 'class-activity-13-b769c',
    storageBucket: 'class-activity-13-b769c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdnZ1yxMi3fWC9exL7c60LX8nhOWtiY7g',
    appId: '1:1012203690874:ios:df8e6c88565cc9320654c3',
    messagingSenderId: '1012203690874',
    projectId: 'class-activity-13-b769c',
    storageBucket: 'class-activity-13-b769c.firebasestorage.app',
    iosBundleId: 'com.example.classActivity13',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdnZ1yxMi3fWC9exL7c60LX8nhOWtiY7g',
    appId: '1:1012203690874:ios:df8e6c88565cc9320654c3',
    messagingSenderId: '1012203690874',
    projectId: 'class-activity-13-b769c',
    storageBucket: 'class-activity-13-b769c.firebasestorage.app',
    iosBundleId: 'com.example.classActivity13',
  );

}