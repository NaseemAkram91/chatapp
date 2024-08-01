import 'package:chatapp/Interfaces/Auth/forget_password_services.dart';
import 'package:chatapp/views/widgets/auth/auth_heading.dart';
import 'package:chatapp/views/widgets/auth/auth_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ForgetPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgetpasswordbtnController =
      RoundedLoadingButtonController();
  final ForgetPasswordServices forgetPasswordServices =
      ForgetPasswordServices();

  ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ChatApp",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff000221),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const AuthHeading(
                  fontsize: 18,
                  heading: "Forget Your Password  ",
                  logo: "assets/images/chat.png",
                  logosize: 22,
                  subheading: ""),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/forgot_password.png"),
              ),
              Text(
                "enter your email for one time otp to reset your password",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              AuthTextfield(
                  // controller: forgetPasswordServices.emailContoller,
                  icon: Icons.alternate_email,
                  keyboardtype: TextInputType.emailAddress,
                  lable: "Email",
                  obscuretext: false,
                  size: 15),
              const SizedBox(
                height: 10,
              ),
              RoundedLoadingButton(
                controller: _forgetpasswordbtnController,
                onPressed: () {
                  print("Send button was pressed");
                },
                child: const Text("Send"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
