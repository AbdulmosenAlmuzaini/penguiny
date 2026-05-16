import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDTcuM5qBsjsNP4BPwV2hKXxteabaH-STM",
            authDomain: "penguiny-8ti46w.firebaseapp.com",
            projectId: "penguiny-8ti46w",
            storageBucket: "penguiny-8ti46w.firebasestorage.app",
            messagingSenderId: "427396032479",
            appId: "1:427396032479:web:62aee9c7dd2efe15d5466a"));
  } else {
    await Firebase.initializeApp();
  }
}
