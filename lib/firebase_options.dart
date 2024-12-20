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
    apiKey: 'AIzaSyB5ECTM3_zNaeO6imJrlTGkTChJ3CrjugE',
    appId: '1:254012701246:web:f3eec570f715acc701ef6f',
    messagingSenderId: '254012701246',
    projectId: 'campus-app-iiitv',
    authDomain: 'campus-app-iiitv.firebaseapp.com',
    storageBucket: 'campus-app-iiitv.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTb69tLcAsUubIvszxwLhFcwqbK_wj-ss',
    appId: '1:254012701246:android:6bb1852dbcb0a54c01ef6f',
    messagingSenderId: '254012701246',
    projectId: 'campus-app-iiitv',
    storageBucket: 'campus-app-iiitv.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEMfilmcSMu5fhuBsYUkoEj3Gs3KqYGP8',
    appId: '1:254012701246:ios:f9bd0dc10f56d82601ef6f',
    messagingSenderId: '254012701246',
    projectId: 'campus-app-iiitv',
    storageBucket: 'campus-app-iiitv.firebasestorage.app',
    iosBundleId: 'com.example.testProj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEMfilmcSMu5fhuBsYUkoEj3Gs3KqYGP8',
    appId: '1:254012701246:ios:f9bd0dc10f56d82601ef6f',
    messagingSenderId: '254012701246',
    projectId: 'campus-app-iiitv',
    storageBucket: 'campus-app-iiitv.firebasestorage.app',
    iosBundleId: 'com.example.testProj',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB5ECTM3_zNaeO6imJrlTGkTChJ3CrjugE',
    appId: '1:254012701246:web:f643ebb57b9cddf801ef6f',
    messagingSenderId: '254012701246',
    projectId: 'campus-app-iiitv',
    authDomain: 'campus-app-iiitv.firebaseapp.com',
    storageBucket: 'campus-app-iiitv.firebasestorage.app',
  );
}
