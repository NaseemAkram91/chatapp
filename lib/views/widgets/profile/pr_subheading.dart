import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PrSubHeading extends StatelessWidget {
  String lable;
  Widget? secondary;
  PrSubHeading({super.key, required this.lable, this.secondary});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            lable,
            style: GoogleFonts.nunito(fontSize: 15, color: Colors.black),
          ),
          secondary ??
              const Icon(
                FontAwesomeIcons.arrowRight,
                size: 15,
              )
        ],
      ),
    );
  }
}
