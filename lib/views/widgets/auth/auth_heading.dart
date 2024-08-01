import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String heading;
  final String subheading;
  final String logo;
  final double fontsize;
  final double logosize;
  const AuthHeading(
      {super.key,
      required this.fontsize,
      required this.heading,
      required this.logo,
      required this.logosize,
      required this.subheading});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              heading,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: fontsize,
                color: const Color(0xff00205C),
              ),
            ),
            Container(
              height: logosize,
              width: logosize,
              child: Image.asset(logo),
            )
          ],
        ),
        Text(
          subheading,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: const Color(0xff00205C),
          ),
        ),
      ],
    );
  }
}
