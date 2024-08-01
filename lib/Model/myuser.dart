import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? email;
  String? password;
  String? username;
  String? displayname;
  String? avatarurl;
  String? frienduid;
  String? chatroomid;
  String? gender;
  String? phone;
  Timestamp? accountcreated;

  MyUser(
      {this.accountcreated,
      this.avatarurl,
      this.chatroomid,
      this.displayname,
      this.email,
      this.frienduid,
      this.gender,
      this.password,
      this.phone,
      this.uid,
      this.username});
}
