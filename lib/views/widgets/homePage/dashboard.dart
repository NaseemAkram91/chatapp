import 'package:chatapp/views/widgets/homePage/dashboardfeature.dart';
import 'package:chatapp/views/widgets/homePage/dashboardgradentfeature.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "DASHBOARD",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "YOUR FRIEND",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                    color: Colors.purple),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 25,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: CircularProfileAvatar(
                          "",
                          backgroundColor: Colors.blue,
                          borderWidth: 1,
                          borderColor: Colors.deepPurpleAccent,
                          radius: 35,
                          elevation: 10,
                          cacheImage: true,
                          errorWidget: (context, url, error) {
                            return const Icon(
                              Icons.face,
                              size: 50,
                            );
                          },
                          onTap: () {},
                          animateFromOldImageOnUrlChange: true,
                          placeHolder: (context, url) {
                            return Container(
                              child: const Center(
                                  child: CircularProgressIndicator()),
                            );
                          },
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Text(
                                  "Naseem Akram",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                Expanded(
                                  child: Text(
                                    "Bahawal Dass,Depalpur,Okara",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Status",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              Text(
                                "offline",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          width: 2,
                          child: Container(
                            color: Colors.purple,
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "User Status",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              Text(
                                "N/A",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          width: 2,
                          child: Container(
                            color: Colors.purple,
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Mood N/A",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              children: [
                DashboardGradentFeature(
                  clr: [Colors.yellow, Colors.lightGreen],
                  text: "Device Info",
                  img: "assets/icons/smartphone.png",
                ),
                DashboardGradentFeature(
                  clr: [Colors.lightGreen, Colors.purple],
                  text: "Gallery",
                  img: "assets/icons/gallery.png",
                ),
                DashboardGradentFeature(
                  clr: [Colors.lightBlue, Colors.yellow],
                  text: "Mood",
                  img: "assets/icons/smile.png",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "OUR FEATURE",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    color: Colors.blueAccent,
                    fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashboardFeature(
                          img: "assets/icons/skip-button.png",
                          text: "PlayList"),
                      DashboardFeature(
                          img: "assets/icons/location.png", text: "Location"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashboardFeature(
                          img: "assets/icons/document.png", text: "To-Do-List"),
                      DashboardFeature(
                          img: "assets/icons/dairy.png", text: "Diary"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashboardFeature(
                          img: "assets/icons/notes.png", text: "Surprise Note"),
                      DashboardFeature(
                          img: "assets/icons/moon.png", text: "Horoscope"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
