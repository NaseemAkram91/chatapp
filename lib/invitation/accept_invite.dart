import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          title: Text(
            "ChatApp",
            style: GoogleFonts.poppins(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.cyan,
            child: Center(
              child: Text(
                "See Recived Invitations",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                    letterSpacing: 1),
                // textScaler: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   child: Container(
          //     child: Card(
          //       elevation: 10,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //       child: Container(
          //         height: 70,
          //         width: double.infinity,
          //         child: Column(
          //           children: [
          //             Row(
          //               children: [
          //                 Padding(
          //                   padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          //                   child: Container(
          //                     height: 50,
          //                     width: 50,
          //                     child: CircularProfileAvatar(
          //                       "",
          //                       backgroundColor: Colors.blueAccent,
          //                       radius: 35,
          //                     ),
          //                   ),
          //                 ),
          //                 Column(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   children: [
          //                     Text(
          //                       "@Naseem121",
          //                       style: GoogleFonts.poppins(
          //                         fontSize: 15,
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                     Text(
          //                       "Naseem",
          //                       style: GoogleFonts.poppins(
          //                         fontSize: 15,
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //                 Spacer(),
          //                 Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 10),
          //                   child: GFButton(
          //                     onPressed: () {},
          //                     color: Colors.cyan,
          //                     child: Text("Add Friend"),
          //                     shape: GFButtonShape.pills,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            height: 350,
            width: 350,
            child: Image.asset("assets/images/empty.jpg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "your recived invitations are currently ",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
              Text(
                "Empty",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.pink,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
