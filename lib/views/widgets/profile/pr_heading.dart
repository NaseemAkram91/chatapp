import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrHeading extends StatelessWidget {
  String lable;
  PrHeading({super.key, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      width: double.infinity,
      child: Text(
        lable,
        style: GoogleFonts.nunito(
          fontSize: 16,
          color: Colors.purple,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
