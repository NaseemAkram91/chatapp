import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Drawer_Listile extends StatelessWidget {
  final IconData iconName;
  final String tileTitle;
  Drawer_Listile({
    required this.iconName,
    required this.tileTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            title: Container(
              alignment: Alignment.center,
              height: 50,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      iconName,
                      size: 20,
                      color: Colors.cyan,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      tileTitle,
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.black87),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
