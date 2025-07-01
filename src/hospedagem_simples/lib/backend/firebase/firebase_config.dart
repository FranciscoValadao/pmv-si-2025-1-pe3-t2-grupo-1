import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA0g9XvoLsO9_uxUCTBtyph8lHfMAoYcpg",
            authDomain: "hospedagem-simples-d705f.firebaseapp.com",
            projectId: "hospedagem-simples-d705f",
            storageBucket: "hospedagem-simples-d705f.firebasestorage.app",
            messagingSenderId: "960399427391",
            appId: "1:960399427391:web:c1ef213f1d2e9240f4f58a"));
  } else {
    await Firebase.initializeApp();
  }
}
