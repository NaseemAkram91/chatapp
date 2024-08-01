import 'package:chatapp/views/widgets/profile/pr_heading.dart';
import 'package:chatapp/views/widgets/profile/pr_subheading.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800, color: Colors.white, fontSize: 22),
        ),
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              constraints: BoxConstraints(maxHeight: 350),
              height: 75.sp,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 130))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // Row(
                    //   children: <Widget>[
                    //     Icon(
                    //       Icons.settings,
                    //       size: 30,
                    //       color: Colors.white,
                    //     ),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       "SETTING",
                    //       style: GoogleFonts.nunito(
                    //           fontWeight: FontWeight.w800,
                    //           color: Colors.white,
                    //           fontSize: 22),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  CircularProfileAvatar(
                                    "",
                                    backgroundColor: Colors.blue,
                                    borderWidth: 1,
                                    borderColor: Colors.deepPurpleAccent,
                                    radius: 30,
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
                                        child: Center(
                                            child: CircularProgressIndicator()),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Naseem Akram",
                                    style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              color: Colors.grey.shade200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            PrHeading(lable: "Profile Setting"),
                            SizedBox(
                              height: 20,
                            ),
                            PrSubHeading(lable: "Edit Name"),
                            PrSubHeading(lable: "Edit Phone Number"),
                            PrSubHeading(lable: "Change Password"),
                            PrSubHeading(
                              lable: "Email Status",
                              secondary: Row(
                                children: [
                                  Text(
                                    "Not  Verified",
                                    style:
                                        GoogleFonts.nunito(color: Colors.red),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            PrHeading(lable: "Notification Setting"),
                            PrSubHeading(
                              lable: "Push Notifications",
                              secondary: GFToggle(
                                onChanged: (val) {},
                                value: true,
                                enabledTrackColor: Colors.greenAccent,
                                type: GFToggleType.android,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            PrHeading(lable: "Application Setting"),
                            PrSubHeading(
                              lable: "Backgroung Updates",
                              secondary: Row(
                                children: [
                                  Text(
                                    "Not  Allowed",
                                    style:
                                        GoogleFonts.nunito(color: Colors.red),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
