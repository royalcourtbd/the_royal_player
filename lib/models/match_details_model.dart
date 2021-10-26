class MatchDetail {
  late String image;
  late String matchName;
  late String matchTime;
  late int winingPrize;
  late int killAmount;
  late int entryFee;
  late String matchType;
  late String matchVersion;
  late String map;

  MatchDetail(
      {required this.entryFee,
      required this.map,
      required this.matchTime,
      required this.matchType,
      required this.image,
      required this.matchName,
      required this.matchVersion,
      required this.winingPrize,
      required this.killAmount});

  Map<String, dynamic> toMap() {
    var mapTo = <String, dynamic>{
      'matchName': matchName,
      'matchTime': matchTime,
      'winingPrize': winingPrize,
      'killAmount': killAmount,
      'entryFee': entryFee,
      'matchType': matchType,
      'matchVersion': matchVersion,
      'map': map,
    };
    return mapTo;
  }

  MatchDetail.fromMap(Map<String, dynamic> map) {
    matchName = map['matchName'];
    matchTime = map['matchTime'];
    winingPrize = map['winingPrize'];
    killAmount = map['killAmount'];
    entryFee = map['entryFee'];
    matchVersion = map['matchVersion'];
    map = map['map'];
  }
}
