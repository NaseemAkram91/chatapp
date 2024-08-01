import 'package:chatapp/Interfaces/Auth/login_services.dart';
import 'package:chatapp/home/homepage.dart';
import 'package:chatapp/views/auth/forget_password.dart';
import 'package:chatapp/views/auth/signup.dart';
import 'package:chatapp/views/widgets/auth/auth_heading.dart';
import 'package:chatapp/views/widgets/auth/auth_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  final LoginServices loginServices = LoginServices();

  Login({super.key});

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
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              AuthHeading(
                  fontsize: 18.sp,
                  heading: "sign in to chatapp  ",
                  logo: "assets/images/chat.png",
                  logosize: 22.sp,
                  subheading: "to connect with \nyour partner"),
              const SizedBox(
                height: 40,
              ),
              AuthTextfield(
                  // controller: loginServices.emailContoller,
                  icon: (Icons.alternate_email),
                  keyboardtype: TextInputType.emailAddress,
                  lable: "Email",
                  obscuretext: false,
                  size: 18.sp),
              const SizedBox(
                height: 10,
              ),
              AuthTextfield(
                  // controller: loginServices.passwordContoller,
                  icon: (Icons.password),
                  keyboardtype: TextInputType.text,
                  lable: "Password",
                  obscuretext: true,
                  size: 18.sp),
              const SizedBox(
                height: 10,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  color: Colors.blueAccent,
                  controller: _btnController,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: HomePage()));
                    // UserController().loginUser(
                    //     context,
                    //     loginServices.emailContoller.text,
                    //     loginServices.passwordContoller.text);
                    // Timer(Duration(seconds: 3), () {
                    //   _btnController.success();
                    //   Navigator.pushReplacement(
                    //     context,
                    //     PageTransition(
                    //       type: PageTransitionType.fade,
                    //       child: HomePage(),
                    //     ),
                    //   );
                    // });
                  },
                  child: const Text("Log in"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: ForgetPassword()));
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "forgetton password",
                    style: GoogleFonts.poppins(
                        color: Colors.red[300], fontSize: 15.sp),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Doesn't have an account?",
                    style: GoogleFonts.poppins(
                        color: Colors.black54, fontSize: 15.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade, child: Signup()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          color: Colors.blue[200], fontSize: 15.sp),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
