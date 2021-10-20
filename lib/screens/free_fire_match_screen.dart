import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_royal_player/models/match_details_model.dart';
import 'package:the_royal_player/widgets/got_match.dart';
import 'package:the_royal_player/widgets/item.dart';

// ignore: must_be_immutable
class FreeFireScreen extends StatefulWidget {
  final ProductItem productItem;

  FreeFireScreen(this.productItem);

  List liveMatch = [
    MatchDetail(
      entryFee: 50,
      map: 'Bermuda',
      matchTime: '',
      matchType: 'Squad',
      image:
          'https://play-lh.googleusercontent.com/cw0x8EiZYDwL6x4XKKXDmfQsFDYKO4Q6xIfiyPOvgIjHCpe41QAM_rl4y0dLu0SJOdM=s180',
      matchName: 'Squad | Morning || 1531',
      matchVersion: 'TTP',
      winingPrize: 300,
      killAmount: 0,
    ),
    MatchDetail(
      entryFee: 50,
      map: 'Bermuda',
      matchTime: '',
      matchType: 'Squad',
      image:
          'https://play-lh.googleusercontent.com/cw0x8EiZYDwL6x4XKKXDmfQsFDYKO4Q6xIfiyPOvgIjHCpe41QAM_rl4y0dLu0SJOdM=s180',
      matchName: 'Solo | Mobile || 15421',
      matchVersion: 'TTP',
      winingPrize: 300,
      killAmount: 0,
    ),
    MatchDetail(
      entryFee: 50,
      map: 'Bermuda',
      matchTime: '',
      matchType: 'Squad',
      image:
          'https://play-lh.googleusercontent.com/cw0x8EiZYDwL6x4XKKXDmfQsFDYKO4Q6xIfiyPOvgIjHCpe41QAM_rl4y0dLu0SJOdM=s180',
      matchName: 'Duo | Morning || 15421',
      matchVersion: 'TTP',
      winingPrize: 300,
      killAmount: 0,
    ),
  ];

  @override
  _FreeFireScreenState createState() => _FreeFireScreenState();
}

class _FreeFireScreenState extends State<FreeFireScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16.0,
        backgroundColor: Colors.deepPurple[400],
        title: Text(
          widget.productItem.matchFound.gameType,
          style: GoogleFonts.lobster(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple.shade100,
      body: ListView(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.liveMatch.length,
            itemBuilder: (context, index) => GotMatch(
              widget.liveMatch[index],
            ),
          )
        ],
      ),
    );
  }
}
