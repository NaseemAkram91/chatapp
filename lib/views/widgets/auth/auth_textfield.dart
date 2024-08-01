import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextfield extends StatelessWidget {
  final String lable;
  // final TextEditingController controller;
  final IconData icon;
  final double size;
  final TextInputType keyboardtype;
  final bool obscuretext;
  final ValueChanged<String>? onChanged;

  AuthTextfield({
    super.key,
    required this.icon,
    required this.keyboardtype,
    required this.lable,
    required this.obscuretext,
    required this.size,
    // required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: controller,
      onChanged: onChanged,
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      autofocus: false,
      style: GoogleFonts.poppins(fontSize: size),
      obscureText: obscuretext,
      keyboardType: keyboardtype,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Color.fromARGB(255, 225, 229, 238),
        filled: true,
        prefixIcon: Icon(
          icon,
          size: size,
        ),
        prefixIconColor: Color.fromARGB(255, 96, 100, 107),
        label: Text(lable),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
