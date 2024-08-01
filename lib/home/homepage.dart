import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:chatapp/invitation/invite_friend.dart';
import 'package:chatapp/views/auth/login.dart';
import 'package:chatapp/views/profile/dashboard_profile.dart';
import 'package:chatapp/views/widgets/homePage/dashboard.dart';
import 'package:chatapp/views/widgets/homePage/drawer_list_tile.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homePage = GlobalKey();

  List<IconData> iconList = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];

  int page = 1;
  int pageView = 1;
  PageController pageController = PageController(initialPage: 1);
  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: const [
        DashBoardProfile(),
        DashBoard(),
        InviteFriend(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homePage,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/chat.png",
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            _homePage.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        pageController.animateToPage(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                        Navigator.pop(context);
                      },
                      child: CircularProfileAvatar(
                        "",
                        backgroundColor: Colors.cyan,
                        borderWidth: 1,
                        borderColor: Colors.purple,
                        elevation: 20,
                        radius: 35,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Naseem Akram",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      Text(
                        "na@gmail.com",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.cyanAccent),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Premium",
                        style: GoogleFonts.poppins(
                            fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 0,
              child: Divider(),
            ),
            Drawer_Listile(
                iconName: FontAwesomeIcons.solidCreditCard,
                tileTitle: "Subscription"),
            Drawer_Listile(iconName: Icons.settings, tileTitle: "Setting"),
            Drawer_Listile(
                iconName: FontAwesomeIcons.circleQuestion, tileTitle: "Help"),
            Drawer_Listile(
                iconName: FontAwesomeIcons.message, tileTitle: "Feedback"),
            Drawer_Listile(
                iconName: FontAwesomeIcons.share, tileTitle: "Invite Friends"),
            Drawer_Listile(
                iconName: FontAwesomeIcons.starHalfAlt,
                tileTitle: "Rate the app"),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Drawer_Listile(
                          iconName: FontAwesomeIcons.signOut,
                          tileTitle: "Sign out"),
                    )
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: page,
        inactiveColor: Colors.black,
        activeColor: Colors.purple,
        leftCornerRadius: 30,
        rightCornerRadius: 30,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          pageView = p0;
          pageController.animateToPage(p0,
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear);
        },
      ),
      body: pageViewSection(),
    );
  }
}
