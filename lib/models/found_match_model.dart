import 'package:flutter/material.dart';

class MatchFound {
  final String image;
  final String gameName;
  final String gameType;
  final String matchCount;
  final Color color;

  MatchFound({
    required this.matchCount,
    required this.color,
    required this.image,
    required this.gameName,
    required this.gameType,
  });
}
