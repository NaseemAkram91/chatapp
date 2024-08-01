import 'package:chatapp/Interfaces/Auth/register_services.dart';
import 'package:chatapp/home/homepage.dart';
import 'package:chatapp/views/auth/login.dart';
import 'package:chatapp/views/widgets/auth/auth_heading.dart';
import 'package:chatapp/views/widgets/auth/auth_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Signup extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  final RegisterServices registerServices = RegisterServices();

  Signup({super.key});
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              AuthHeading(
                  fontsize: 18.sp,
                  heading: "sign up to chatapp  ",
                  logo: "assets/images/chat.png",
                  logosize: 22.sp,
                  subheading: "to connect with \nyour partner"),
              const SizedBox(
                height: 10,
              ),
              AuthTextfield(
                  icon: (Icons.alternate_email),
                  // controller: registerServices.emailController,
                  // onChanged: (value) => registerServices.updateController(
                  //     registerServices.emailController, value),
                  keyboardtype: TextInputType.emailAddress,
                  lable: "Email",
                  obscuretext: false,
                  size: 18.sp),
              const SizedBox(
                height: 10,
              ),
              AuthTextfield(
                  // controller: registerServices.passwordController,
                  // onChanged: (value) => registerServices.updateController(
                  //     registerServices.passwordController, value),
                  icon: (Icons.password),
                  keyboardtype: TextInputType.text,
                  lable: "Password",
                  obscuretext: true,
                  size: 18.sp),
              const SizedBox(
                height: 10,
              ),
              AuthTextfield(
                  icon: (Icons.lock_reset),
                  keyboardtype: TextInputType.text,
                  // controller: registerServices.confirmpasswordController,
                  // onChanged: (value) => registerServices.updateController(
                  //     registerServices.confirmpasswordController, value),
                  lable: "Conferm Password",
                  obscuretext: true,
                  size: 18.sp),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Hero(
                  tag: "Auth",
                  child: RoundedLoadingButton(
                    width: 20000,
                    color: Colors.blueAccent,
                    controller: _btnController,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: HomePage()));
                      // if (registerServices.passwordController.text ==
                      //     registerServices.confirmpasswordController.text) {
                      //   UserController().registerUser(
                      //       context,
                      //       registerServices.emailController.text,
                      //       registerServices.passwordController.text);
                      // } else {
                      //   AchievementView(
                      //           title: "ERROR",
                      //           subTitle: "Password does not match",
                      //           color: Colors.red.shade100,
                      //           duration: Duration(milliseconds: 200))
                      //       .show(context);
                      // }
                    },
                    child: const Text("Sign Up"),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black54,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade, child: Login()));
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: Colors.red[300],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
