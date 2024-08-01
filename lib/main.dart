import 'package:chatapp/home/homepage.dart';
import 'package:chatapp/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Chat App",
          initialRoute: '/',
          routes: {
            '/': (context) => Login(),
            '/home': (context) => HomePage(),
            // Add more routes as needed
          },
        );
      },
    );
  }
}
