import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_royal_player/models/found_match_model.dart';

import 'package:the_royal_player/widgets/custom_appbar.dart';
import 'package:the_royal_player/widgets/item.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int totalMatch = 2;
  final foundMatch = [
    MatchFound(
      image:
          'https://play-lh.googleusercontent.com/cw0x8EiZYDwL6x4XKKXDmfQsFDYKO4Q6xIfiyPOvgIjHCpe41QAM_rl4y0dLu0SJOdM=s180',
      gameName: 'FreeFire',
      gameType: 'Clash Squad Match',
      color: Colors.deepOrange.shade200,
      matchCount: 'No Match Found',
    ),
    MatchFound(
      image:
          'https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg',
      gameName: 'PUBG',
      gameType: 'Team DeathMatch',
      color: Colors.deepPurple.shade200,
      matchCount: ' Match Found',
    ),
  ];

  List slideImage = [
    NetworkImage(
        'https://images.indianexpress.com/2021/09/Garena-Free-Fire-MAX.jpg'),
    NetworkImage(
        'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/11/19/938548-sunny-leone.jpg'),
    NetworkImage(
        'https://venturebeat.com/wp-content/uploads/2020/05/Garena-Free-Fire.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: slideImage.length,
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 3, bottom: 10),
                child: Container(
                  //width: 350,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 7,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.deepPurple.shade200,
                    image: DecorationImage(
                      image: slideImage[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1.9,
              disableCenter: false,
              initialPage: 1,

              //pauseAutoPlayOnTouch: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Daily match',
              style: GoogleFonts.arvo(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shrinkWrap: true,
            itemCount: foundMatch.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemBuilder: (context, index) {
              return ProductItem(
                foundMatch[index],
              );
            },
          )
        ],
      ),
    );
  }
}
