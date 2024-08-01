import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashProfileTextfiled extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color clr;
  final String type;
  const DashProfileTextfiled(
      {super.key,
      required this.icon,
      required this.type,
      required this.text,
      required this.clr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          color: clr,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(),
            ),
            Expanded(
              child: Text(
                text,
                textScaleFactor: 1,
                textAlign: TextAlign.right,
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: text == "Not Currently Set"
                        ? Colors.red
                        : Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
