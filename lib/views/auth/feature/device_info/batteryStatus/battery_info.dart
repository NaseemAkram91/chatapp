import 'package:chatapp/views/auth/feature/device_info/batteryStatus/tow_value_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFAD585),
              Color(0xFFF47A7D),
            ],
          ),
        ),
        child: Column(
          children: [
            //First Half
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Battery Status",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: TwoValueCard(
                                    lbl: "Status", value: "Discharge"),
                              ),
                              Expanded(
                                child: TwoValueCard(
                                    lbl: "Charging Type", value: "-"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 10,
                                child: TwoValueCard(
                                  lbl: "Battery Percentage",
                                  value: "Discharge",
                                  subwidget: SleekCircularSlider(
                                    min: 0,
                                    max: 100,
                                    appearance: CircularSliderAppearance(
                                        size: 95,
                                        customColors: CustomSliderColors(
                                          progressBarColor: Color(0xFFF47A7D),
                                        ),
                                        infoProperties: InfoProperties(
                                            mainLabelStyle: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w500,
                                        ))),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: TwoValueCard(
                                    lbl: "Temprature", value: "35%"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: TwoValueCard(
                                    lbl: "Battery Health", value: "Good"),
                              ),
                              Expanded(
                                child: TwoValueCard(
                                    lbl: "Battery Technology",
                                    value: "Li-poly"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Second Half
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Battery Status",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: TwoValueCard(
                                      clr: Color(0xffF57D7C),
                                      lbl: "Status",
                                      valueclr: Colors.white,
                                      value: "Discharge"),
                                ),
                                Expanded(
                                  child: TwoValueCard(
                                      clr: Color(0xffF57D7C),
                                      lbl: "Charging Type",
                                      valueclr: Colors.white,
                                      value: "-"),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: TwoValueCard(
                                    clr: Color(0xffF57D7C),
                                    lbl: "Battery Percentage",
                                    value: "Discharge",
                                    subwidget: SleekCircularSlider(
                                      min: 0,
                                      max: 100,
                                      appearance: CircularSliderAppearance(
                                          size: 95,
                                          customColors: CustomSliderColors(
                                            progressBarColor: Colors.white,
                                          ),
                                          infoProperties: InfoProperties(
                                              mainLabelStyle:
                                                  GoogleFonts.nunito(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white))),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: TwoValueCard(
                                    clr: Color(0xffF57D7C),
                                    lbl: "Temprature",
                                    value: "30.33%",
                                    valueclr: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: TwoValueCard(
                                    lbl: "Battery Health",
                                    value: "Good",
                                    clr: Color(0xffF57D7C),
                                    valueclr: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: TwoValueCard(
                                      valueclr: Colors.white,
                                      clr: Color(0xffF57D7C),
                                      lbl: "Battery Technology",
                                      value: "Li-poly"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
