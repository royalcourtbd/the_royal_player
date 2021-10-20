import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';

class WalletScreen extends StatefulWidget {
  final dateStr = 'August 6, 2020 at 5:44:45 PM UTC+7';
  final formatter = DateFormat(r'''MMMM dd, yyyy 'at' hh:mm:ss a Z''');

  //final dateTimeFromStr = formatter.parse(dateStr);
  // print(dateTimeFromStr);

  @override
  _WelletScreenState createState() => _WelletScreenState();
}

class _WelletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: Center(
        child: Text(
          'Wallet',
          style: GoogleFonts.lobster(fontSize: 25),
        ),
      ),
    );
  }
}
