import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:the_royal_player/models/match_details_model.dart';
import 'package:the_royal_player/widgets/container.dart';

class GotMatch extends StatefulWidget {
  final MatchDetail matchDetail;
  GotMatch(this.matchDetail);

  @override
  _GotMatchState createState() => _GotMatchState();
}

class _GotMatchState extends State<GotMatch> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight / 2.8,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade200,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                    child: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: NetworkImage(widget.matchDetail.image),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.matchDetail.matchName,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.arvo(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Time: ' +
                          DateFormat('dd/MMM/yyyy')
                              .format(DateTime.now())
                              .toString() +
                          ' at ' +
                          DateFormat('hh:mm a')
                              .format(DateTime.now())
                              .toString(),
                      style: GoogleFonts.arvo(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ViewContainer('Wining Prize',
                    '৳' + widget.matchDetail.winingPrize.toString()),
                ViewContainer(
                    'Per Kill', '৳' + widget.matchDetail.killAmount.toString()),
                ViewContainer(
                    'Entry Fee', '৳' + widget.matchDetail.entryFee.toString()),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ViewContainer('Type', widget.matchDetail.matchType),
                ViewContainer('Version', widget.matchDetail.matchVersion),
                ViewContainer('Map', widget.matchDetail.map),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
