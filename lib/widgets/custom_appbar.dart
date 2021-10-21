import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_royal_player/screens/wellet.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  double balance = 9.00;
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 16.0,
      backgroundColor: Colors.deepPurple[400],
      title: Text(
        'The Royal Player',
        style: GoogleFonts.lobster(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Wallet(),
              ));
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                '$balance ৳',
                style: GoogleFonts.lobster(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
