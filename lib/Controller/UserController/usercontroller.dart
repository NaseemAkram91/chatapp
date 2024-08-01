import 'package:chatapp/Model/myuser.dart';
import 'package:chatapp/Services/user_db.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserController {
  // MyUser currentUser = MyUser();
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //function for register user
  Future<bool> registerUser(
      BuildContext context, String email, String password) async {
    //functionalty
    try {
      MyUser user = MyUser();
      UserCredential authResult = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? u = authResult.user;
      if (u != null) {
        Navigator.pushReplacementNamed(context, '/home');
      }

      if (authResult.user != null) {
        user.uid = authResult.user!.uid;
        user.email = authResult.user!.email;
        user.password = password;
        UserDataBase().createuserindb(user);
      }
      return true;
    } catch (e) {
     
      return false;
    }
  }

  Future<bool> loginUser(
      BuildContext context, String email, String password) async {
    try {
      UserCredential loginResult = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = loginResult.user;
      if (user != null) {
        Navigator.pushReplacementNamed(context, '/home');
      }
      if (loginResult.user != null) {
        await UserDataBase().getUserInfo();
      }
      return true;
    } catch (e) {
      
      return false;
    }
  }
}
