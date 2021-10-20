class MatchDetail {
  final String image;
  final String matchName;
  final String matchTime;
  final int winingPrize;
  final int killAmount;
  final int entryFee;
  final String matchType;
  final String matchVersion;
  final String map;

  MatchDetail({
    required this.entryFee,
    required this.map,
    required this.matchTime,
    required this.matchType,
    required this.image,
    required this.matchName,
    required this.matchVersion,
    required this.winingPrize,
    required this.killAmount,
  });
}
