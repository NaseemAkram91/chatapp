import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardFeature extends StatelessWidget {
  final String img;
  final String text;

  DashboardFeature({required this.img, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
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
                style: GoogleFonts.nunito(fontSize: 18, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
