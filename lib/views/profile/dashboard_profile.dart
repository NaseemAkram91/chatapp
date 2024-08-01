import 'package:chatapp/views/profile/dash_profile_textfield.dart';
import 'package:chatapp/views/profile/profile_settings.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class DashBoardProfile extends StatefulWidget {
  const DashBoardProfile({super.key});

  @override
  State<DashBoardProfile> createState() => _DashBoard_ProfileState();
}

class _DashBoard_ProfileState extends State<DashBoardProfile> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "MY PROFILE",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          CircularProfileAvatar(
            "",
            backgroundColor: Colors.blue,
            borderWidth: 1,
            borderColor: Colors.deepPurpleAccent,
            radius: 50,
            elevation: 10,
            cacheImage: true,
            errorWidget: (context, url, error) {
              return Icon(
                Icons.face,
                size: 50,
              );
            },
            onTap: () {},
            animateFromOldImageOnUrlChange: true,
            placeHolder: (context, url) {
              return Container(
                child: Center(child: CircularProgressIndicator()),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Naseem Akram",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Text(
            "@naseemakram",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w200, fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                BorderSide(color: Colors.purple),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: ProfileSettings()));
            },
            child: Text(
              "EDIT YOUR PROFILE",
              style: TextStyle(color: Colors.purple),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                DashProfileTextfiled(
                    icon: Icon(Icons.alternate_email),
                    type: "Email",
                    text: "naseem@gmail.com",
                    clr: Colors.grey),
                DashProfileTextfiled(
                    icon: Icon(Icons.flag),
                    type: "Country",
                    text: "Pakistan",
                    clr: Colors.black12),
                DashProfileTextfiled(
                    icon: Icon(Icons.phone),
                    type: "Phone Number",
                    text: "Not Currently Set",
                    clr: Colors.grey),
                more
                    ? DashProfileTextfiled(
                        icon: Icon(FontAwesomeIcons.venusMars),
                        type: "Gender",
                        text: "Male",
                        clr: Colors.black12)
                    : Container(),
                more
                    ? DashProfileTextfiled(
                        icon: Icon(Icons.person_2_outlined),
                        type: "Partner",
                        text: "Not Currently Set",
                        clr: Colors.grey)
                    : Container(),
                more
                    ? DashProfileTextfiled(
                        icon: Icon(Icons.fingerprint),
                        type: "UID",
                        text: "PcxD34GhKsdHJwe562hdjhHJSD2",
                        clr: Colors.black12)
                    : Container(),
                more
                    ? DashProfileTextfiled(
                        icon: Icon(Icons.schedule),
                        type: "Account created",
                        text: "18-11-23",
                        clr: Colors.grey)
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                BorderSide(color: Colors.black38),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.black12),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                more = !more;
              });
            },
            child: Text(
              more ? "- Show Less" : "+ Show more",
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      gradient:
                          LinearGradient(colors: [Colors.blue, Colors.green])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Subscribed to",
                        style: GoogleFonts.nunito(
                            fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "Premium",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      gradient: LinearGradient(
                          colors: [Color(0xffff9966), Color(0xffff5e62)])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Subscribed on",
                        style: GoogleFonts.nunito(
                            fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "N/A",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
