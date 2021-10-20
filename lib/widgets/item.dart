import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_royal_player/models/found_match_model.dart';
import 'package:the_royal_player/screens/free_fire_match_screen.dart';

class ProductItem extends StatefulWidget {
  final MatchFound matchFound;

  ProductItem(this.matchFound);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  int totalMatch = 3;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    FreeFireScreen(ProductItem(widget.matchFound)),
              ));
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: 200,
              decoration: BoxDecoration(
                color: widget.matchFound.color,
                borderRadius: BorderRadius.circular(11.0),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 3)),
              child: CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(widget.matchFound.image),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 11,
            left: screenWidth / 29,
            child: Text(
              widget.matchFound.gameName,
              style:
                  GoogleFonts.arvo(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: screenHeight / 8.6,
            left: screenWidth / 29,
            child: Text(
              widget.matchFound.gameType,
              style: GoogleFonts.arvo(),
            ),
          ),
          Positioned(
            top: screenHeight / 7,
            left: screenWidth / 29,
            child: Text(
              '$totalMatch ' + widget.matchFound.matchCount,
              style: GoogleFonts.arvo(),
            ),
          ),
        ],
      ),
    );
  }
}
