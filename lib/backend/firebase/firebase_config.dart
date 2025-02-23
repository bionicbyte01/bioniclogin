import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDHbJqeJSfZrPT97CJxMe5oxh_TiWmOa_Q",
            authDomain: "bionicflutterflowapps.firebaseapp.com",
            projectId: "bionicflutterflowapps",
            storageBucket: "bionicflutterflowapps.firebasestorage.app",
            messagingSenderId: "977170500415",
            appId: "1:977170500415:web:69c00f014b02d918ee218a",
            measurementId: "G-5NQQ1VZW8C"));
  } else {
    await Firebase.initializeApp();
  }
}
