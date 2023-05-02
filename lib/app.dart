import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Pages/FirstScreen/FirstScreen.dart';
import 'Pages/LoginPages/LoginPage.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return const FirstScreen();
              } else {
                return const LoginPage();
              }
            })));
  }
}
