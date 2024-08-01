import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GradientButtonContainer extends StatelessWidget {
  final String lbl;
  final List<Color> clr;
  bool isGradientVertical;
  final Color overlay;
  GradientButtonContainer(
      {required this.clr,
      required this.isGradientVertical,
      required this.lbl,
      required this.overlay});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.all(Radius.circular(30)),
      // ),
      padding: EdgeInsets.all(5),
      width: double.infinity,
      child: Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            gradient: LinearGradient(
              begin: isGradientVertical
                  ? Alignment.topCenter
                  : Alignment.centerLeft,
              end: isGradientVertical
                  ? Alignment.bottomCenter
                  : Alignment.centerRight,
              colors: clr,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    lbl,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(0)),
                    elevation: MaterialStateProperty.all(0),
                    overlayColor: MaterialStateProperty.all<Color>(overlay),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
