import 'dart:async';

import 'package:chatapp/invitation/invite_friend.dart';
import 'package:chatapp/views/widgets/auth/auth_textfield.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Profilesetup extends StatelessWidget {
  final RoundedLoadingButtonController profilesetupbtn =
      RoundedLoadingButtonController();

  Profilesetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/chat.png",
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              "Profile Setup",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CircularProfileAvatar(
            "",
            backgroundColor: Colors.lightBlueAccent,
            radius: 40,
            initialsText: const Text("+"),
            showInitialTextAbovePicture: false,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              child: Column(
                children: [
                  AuthTextfield(
                      // controller: TextEditingController(),
                      icon: Icons.face,
                      keyboardtype: TextInputType.text,
                      lable: "Your Name",
                      obscuretext: false,
                      size: 15),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextfield(
                      // controller: TextEditingController(),
                      icon: Icons.alternate_email,
                      keyboardtype: TextInputType.text,
                      lable: "User Name",
                      obscuretext: false,
                      size: 15),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        child: const Icon(Icons.male),
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Colors.cyanAccent,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 9),
                                blurRadius: 15),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        child: const Icon(Icons.female),
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Colors.pinkAccent,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 9),
                                blurRadius: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Hero(
                    tag: "Auth",
                    child: RoundedLoadingButton(
                      controller: profilesetupbtn,
                      onPressed: () {
                        Timer(const Duration(seconds: 3), () {
                          profilesetupbtn.success();
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: const InviteFriend()));
                        });
                      },
                      child: const Text("Set"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
