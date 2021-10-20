import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_royal_player/widgets/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: CustomAppBar(),
      body: Center(
        child: Text(
          'Profile',
          style: GoogleFonts.lobster(fontSize: 25),
        ),
      ),
    );
  }
}
