import 'package:flutter/widgets.dart';

class Player {
  int id;
  String name;
  String lastName;
  String catchPhrase;
  int penalities;
  bool isOut;
  String image;
  List<int> achievementsId;
  String nasScore;
}

class PlayersAchievementsRef {
  int id;
  int achievementId;
  int playerId;
}
