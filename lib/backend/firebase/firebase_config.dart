import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCU6LKqbc7cmPHcqAaxtsuJ9KMCyJWE_II",
            authDomain: "rss-client-21d3b.firebaseapp.com",
            projectId: "rss-client-21d3b",
            storageBucket: "rss-client-21d3b.appspot.com",
            messagingSenderId: "518631005157",
            appId: "1:518631005157:web:19a26debab94ebb8afad0c"));
  } else {
    await Firebase.initializeApp();
  }
}
