import 'package:chatapp/views/auth/feature/gradient_button_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/chat.png",
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyanAccent, Colors.cyan],
              ),
            ),
            child: Text(
              "DEVICE INFO",
              style:
                  GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 10,
                        child: GradientButtonContainer(
                            clr: [Color(0xFF86AAE8), Color(0xFF92E9E3)],
                            isGradientVertical: true,
                            lbl: "User Status",
                            overlay: Colors.cyan),
                      ),
                      Expanded(
                        flex: 6,
                        child: GradientButtonContainer(
                            clr: [Color(0xFFFAD585), Color(0xFFF47A7D)],
                            isGradientVertical: false,
                            lbl: "Battery",
                            overlay: Colors.cyan),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GradientButtonContainer(
                      clr: [Color(0xFF50C9C2), Color(0xFF95DEDA)],
                      isGradientVertical: true,
                      lbl: "General",
                      overlay: Colors.cyan),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(children: [
            Expanded(
                flex: 6,
                child: GradientButtonContainer(
                    clr: [Color(0xFF50C9C2), Color(0xFF95DEDA)],
                    isGradientVertical: true,
                    lbl: "Device Specs",
                    overlay: Colors.cyan)),
            Expanded(
                flex: 10,
                child: Column(
                  children: [
                    Expanded(
                        flex: 10,
                        child: GradientButtonContainer(
                            clr: [Color(0xFF8893D6), Color(0xFF8CA5DB)],
                            isGradientVertical: false,
                            lbl: "Location",
                            overlay: Color(0xff8159C6))),
                    Expanded(
                        flex: 6,
                        child: GradientButtonContainer(
                            clr: [Color(0xFFF2709B), Color(0xFFFF9370)],
                            isGradientVertical: true,
                            lbl: "Orientation",
                            overlay: Color(0xfff98583))),
                  ],
                )),
          ])),
        ],
      ),
    );
  }
}
