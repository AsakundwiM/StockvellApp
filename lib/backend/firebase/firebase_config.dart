import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBpHNOszLLwFysWqAkNpwlDfhEwAcK0EQo",
            authDomain: "data-84f27.firebaseapp.com",
            projectId: "data-84f27",
            storageBucket: "data-84f27.appspot.com",
            messagingSenderId: "708329822089",
            appId: "1:708329822089:web:9a57042b763df48ba7f358",
            measurementId: "G-Q7QN99V5PW"));
  } else {
    await Firebase.initializeApp();
  }
}
