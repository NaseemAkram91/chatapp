import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoValueCard extends StatelessWidget {
  final String lbl;
  final String value;
  final Widget? subwidget;
  final Color? clr;
  final Color? valueclr;

  TwoValueCard(
      {required this.lbl,
      required this.value,
      this.subwidget,
      this.clr,
      this.valueclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      child: Card(
        color: clr ?? Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              lbl,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: subwidget ??
                  Text(
                    value,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: valueclr ?? Color(0xFFF47A7D),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
