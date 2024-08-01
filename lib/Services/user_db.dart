import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class UserDataBase {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  Future<bool> createuserindb(user) async {
    try {
      await firestore.collection("users").add({
        "uid": user.uid,
        "email": user.email,
        "password": user.password,
        "username": user.username,
        "displayname": user.displayname,
        "avatarurl": user.avatarurl,
        "frienduid": user.frienduid,
        "chatroomid": user.chatroomid,
        "gender": user.gender,
        "phone": user.phone,
        "accountcreated": Timestamp.now(),
      });
      return true;
    } catch (e) {
      return false;
    }
  }

// Function to set user information in Firestore
  Future<void> setUserInfo(String displayName, String email) async {
    try {
      // Get the current user
      User? user = FirebaseAuth.instance.currentUser;

      // Check if the user is signed in
      if (user != null) {
        // Access the Firestore collection where user information is stored
        CollectionReference usersCollection =
            FirebaseFirestore.instance.collection('users');

        // Set user information in Firestore
        await usersCollection.doc(user.uid).set({
          'uid': user.uid,
          'displayName': displayName,
          'email': email,
          // Add additional fields as needed
        });

        print('User info set successfully!');
      } else {
        print('No user is currently signed in');
      }
    } catch (e) {
      print('Error setting user info: $e');
      // Handle errors as needed
    }
  }

// Function to get user information from Firestore
  Future<void> getUserInfo() async {
    try {
      // Get the current user
      User? user = FirebaseAuth.instance.currentUser;
      _btnController.start();

      // Check if the user is signed in
      if (user != null) {
        // Access the Firestore collection where user information is stored
        CollectionReference usersCollection =
            FirebaseFirestore.instance.collection('users');

        // Query the collection using the user's UID
        DocumentSnapshot userDoc = await usersCollection.doc(user.uid).get();

        // Check if a user with the provided UID exists
        if (userDoc.exists) {
          // Access user data
          Map<String, dynamic> userData =
              userDoc.data() as Map<String, dynamic>;

          // Print or use the user data as needed
          print('User Info: $userData');
        } else {
          print('User not found in Firestore');
        }
      } else {
        print('No user is currently signed in');
      }
    } catch (e) {
      print('Error getting user info: $e');
      // Handle errors as needed
    } finally {
      _btnController.stop();
    }
  }
}
