import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardGradentFeature extends StatelessWidget {
  final String img;
  final String text;
  final List<Color> clr;
  DashboardGradentFeature(
      {required this.img, required this.clr, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 108,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
              offset: Offset(0.0, 3.0),
            ),
          ],
          gradient: LinearGradient(
            colors: clr,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  img,
                )),
            Flexible(
              child: Text(
                text,
                style: GoogleFonts.nunito(fontSize: 10, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
